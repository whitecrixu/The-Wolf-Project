/**
 * The Forgotten Server - a free and open-source MMORPG server emulator
 * Copyright (C) 2016  Mark Samman <mark.samman@gmail.com>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program; if not, write to the Free Software Foundation, Inc.,
 * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
 */

#include "otpch.h"

#include "server.h"

#include "game.h"

#include "iomarket.h"

#include "configmanager.h"
#include "scriptmanager.h"
#include "rsa.h"
#include "protocolspectator.h"
#include "protocolold.h"
#include "protocollogin.h"
#include "protocolstatus.h"
#include "databasemanager.h"
#include "scheduler.h"
#include "databasetasks.h"

DatabaseTasks g_databaseTasks;
Dispatcher g_dispatcher;
Scheduler g_scheduler;

Game g_game;
ConfigManager g_config;
Monsters g_monsters;
Vocations g_vocations;
RSA g_RSA;

std::mutex g_loaderLock;
std::condition_variable g_loaderSignal;
std::unique_lock<std::mutex> g_loaderUniqueLock(g_loaderLock);

void startupErrorMessage(const std::string& errorStr)
{
	std::cout << "> ERROR: " << errorStr << std::endl;
	g_loaderSignal.notify_all();
}

void mainLoader(int argc, char* argv[], ServiceManager* servicer);

void badAllocationHandler()
{
	// Use functions that only use stack allocation
	puts("Allocation failed, server out of memory.\nDecrease the size of your map or compile in 64 bits mode.\n");
	getchar();
	exit(-1);
}

int main(int argc, char* argv[])
{
	// Setup bad allocation handler
	std::set_new_handler(badAllocationHandler);

	ServiceManager serviceManager;

	g_dispatcher.start();
	g_scheduler.start();

	g_dispatcher.addTask(createTask(std::bind(mainLoader, argc, argv, &serviceManager)));

	g_loaderSignal.wait(g_loaderUniqueLock);

	if (serviceManager.is_running()) {
		serviceManager.run();
	} else {
		std::cout << "\033[31m  ✗ No services running. The server is NOT online.\033[0m" << std::endl;
		g_scheduler.shutdown();
		g_databaseTasks.shutdown();
		g_dispatcher.shutdown();
	}

	g_scheduler.join();
	g_databaseTasks.join();
	g_dispatcher.join();
	return 0;
}

void mainLoader(int, char*[], ServiceManager* services)
{
	//dispatcher thread
	g_game.setGameState(GAME_STATE_STARTUP);

	srand(static_cast<unsigned int>(OTSYS_TIME()));
#ifdef _WIN32
	SetConsoleTitle(STATUS_SERVER_NAME);
#endif

	// ANSI color codes
	const char* RESET = "\033[0m";
	const char* BOLD = "\033[1m";
	const char* RED = "\033[31m";
	const char* GREEN = "\033[32m";
	const char* CYAN = "\033[36m";
	const char* YELLOW = "\033[33m";
	const char* MAGENTA = "\033[35m";
	const char* WHITE = "\033[97m";
	const char* DIM = "\033[2m";

	std::cout << std::endl;
	std::cout << CYAN << "  ╔══════════════════════════════════════════════════════════════════╗" << RESET << std::endl;
	std::cout << CYAN << "  ║" << RESET << BOLD << WHITE << "                    🐺 THE WOLF PROJECT 🐺                        " << RESET << CYAN << "║" << RESET << std::endl;
	std::cout << CYAN << "  ╠══════════════════════════════════════════════════════════════════╣" << RESET << std::endl;
	std::cout << CYAN << "  ║" << RESET << "  Version: " << YELLOW << STATUS_SERVER_VERSION << RESET << "  │  Codename: " << MAGENTA << SOFTWARE_CODENAME << RESET << "                        " << CYAN << "║" << RESET << std::endl;
	std::cout << CYAN << "  ╚══════════════════════════════════════════════════════════════════╝" << RESET << std::endl;
	std::cout << std::endl;

	std::cout << DIM << "  Compiled with " << BOOST_COMPILER << " on " << __DATE__ << " " << __TIME__ << RESET << std::endl;
	std::cout << DIM << "  Platform: ";
#if defined(__amd64__) || defined(_M_X64)
	std::cout << "x64";
#elif defined(__i386__) || defined(_M_IX86) || defined(_X86_)
	std::cout << "x86";
#elif defined(__arm__)
	std::cout << "ARM";
#else
	std::cout << "unknown";
#endif
	std::cout << RESET << std::endl;
	std::cout << DIM << "  GitHub: " << GIT_REPO << RESET << std::endl;
	std::cout << std::endl;

	// read global config
	std::cout << GREEN << "  ▸ " << RESET << "Loading configuration..." << std::flush;
	if (!g_config.load()) {
		std::cout << " ✗" << std::endl;
		startupErrorMessage("Unable to load config.lua!");
		return;
	}
	std::cout << GREEN << " ✓" << RESET << std::endl;

#ifdef _WIN32
	const std::string& defaultPriority = g_config.getString(ConfigManager::DEFAULT_PRIORITY);
	if (strcasecmp(defaultPriority.c_str(), "high") == 0) {
		SetPriorityClass(GetCurrentProcess(), HIGH_PRIORITY_CLASS);
	} else if (strcasecmp(defaultPriority.c_str(), "above-normal") == 0) {
		SetPriorityClass(GetCurrentProcess(), ABOVE_NORMAL_PRIORITY_CLASS);
	}
#endif

	//set RSA key
	const char* p("14299623962416399520070177382898895550795403345466153217470516082934737582776038882967213386204600674145392845853859217990626450972452084065728686565928113");
	const char* q("7630979195970404721891201847792002125535401292779123937207447574596692788513647179235335529307251350570728407373705564708871762033017096809910315212884101");
	g_RSA.setKey(p, q);

	std::cout << GREEN << "  ▸ " << RESET << "Connecting to database..." << std::flush;

	Database* db = Database::getInstance();
	if (!db->connect()) {
		std::cout << " ✗" << std::endl;
		startupErrorMessage("Failed to connect to database.");
		return;
	}

	std::cout << GREEN << " ✓" << RESET << " (MySQL " << Database::getClientVersion() << ")" << std::endl;

	// run database manager
	std::cout << GREEN << "  ▸ " << RESET << "Running database manager..." << std::flush;

	if (!DatabaseManager::isDatabaseSetup()) {
		std::cout << " ✗" << std::endl;
		startupErrorMessage("The database you have specified in config.lua is empty, please import the schema.sql to your database.");
		return;
	}
	g_databaseTasks.start();

	DatabaseManager::updateDatabase();
	std::cout << GREEN << " ✓" << RESET << std::endl;

	if (g_config.getBoolean(ConfigManager::OPTIMIZE_DATABASE) && !DatabaseManager::optimizeTables()) {
		std::cout << DIM << "    No tables needed optimization." << RESET << std::endl;
	}

	//load vocations
	std::cout << GREEN << "  ▸ " << RESET << "Loading vocations..." << std::flush;
	if (!g_vocations.loadFromXml()) {
		std::cout << " ✗" << std::endl;
		startupErrorMessage("Unable to load vocations!");
		return;
	}
	std::cout << GREEN << " ✓" << RESET << std::endl;

	// load item data
	std::cout << GREEN << "  ▸ " << RESET << "Loading items..." << std::flush;
	if (Item::items.loadFromOtb("data/items/items.otb") != ERROR_NONE) {
		std::cout << RED << " ✗" << RESET << std::endl;
		startupErrorMessage("Unable to load items (OTB)!");
		return;
	}

	if (!Item::items.loadFromXml()) {
		std::cout << RED << " ✗" << RESET << std::endl;
		startupErrorMessage("Unable to load items (XML)!");
		return;
	}
	std::cout << GREEN << " ✓" << RESET << std::endl;

	std::cout << GREEN << "  ▸ " << RESET << "Loading script systems..." << std::flush;
	if (!ScriptingManager::getInstance()->loadScriptSystems()) {
		std::cout << RED << " ✗" << RESET << std::endl;
		startupErrorMessage("Failed to load script systems");
		return;
	}
	std::cout << GREEN << " ✓" << RESET << std::endl;

	std::cout << GREEN << "  ▸ " << RESET << "Loading monsters..." << std::flush;
	if (!g_monsters.loadFromXml()) {
		std::cout << RED << " ✗" << RESET << std::endl;
		startupErrorMessage("Unable to load monsters!");
		return;
	}
	std::cout << GREEN << " ✓ " << RESET << "(" << DIM << g_monsters.getMonsterCount() << " types" << RESET << ")" << std::endl;

	std::cout << GREEN << "  ▸ " << RESET << "Loading outfits..." << std::flush;
	Outfits* outfits = Outfits::getInstance();
	if (!outfits->loadFromXml()) {
		std::cout << RED << " ✗" << RESET << std::endl;
		startupErrorMessage("Unable to load outfits!");
		return;
	}
	std::cout << GREEN << " ✓" << RESET << std::endl;

	std::cout << GREEN << "  ▸ " << RESET << "World type: " << std::flush;
	std::string worldType = asLowerCaseString(g_config.getString(ConfigManager::WORLD_TYPE));
	if (worldType == "pvp") {
		g_game.setWorldType(WORLD_TYPE_PVP);
	} else if (worldType == "no-pvp") {
		g_game.setWorldType(WORLD_TYPE_NO_PVP);
	} else if (worldType == "pvp-enforced") {
		g_game.setWorldType(WORLD_TYPE_PVP_ENFORCED);
	} else {
		std::cout << RED << "ERROR" << RESET << std::endl;

		std::ostringstream ss;
		ss << "> ERROR: Unknown world type: " << g_config.getString(ConfigManager::WORLD_TYPE) << ", valid world types are: pvp, no-pvp and pvp-enforced.";
		startupErrorMessage(ss.str());
		return;
	}
	std::cout << CYAN << asUpperCaseString(worldType) << RESET << std::endl;

	std::cout << GREEN << "  ▸ " << RESET << "Loading map..." << std::flush;
	if (!g_game.loadMainMap(g_config.getString(ConfigManager::MAP_NAME))) {
		std::cout << RED << " ✗" << RESET << std::endl;
		startupErrorMessage("Failed to load map");
		return;
	}
	std::cout << GREEN << " ✓" << RESET << std::endl;

	std::cout << GREEN << "  ▸ " << RESET << "Initializing gamestate..." << std::flush;
	g_game.setGameState(GAME_STATE_INIT);
	std::cout << GREEN << " ✓" << RESET << std::endl;

	// Game client protocols
	std::cout << std::endl;
	std::cout << CYAN << "  ═══════════════════════════════════════════════" << RESET << std::endl;
	std::cout << CYAN << "  │         " << BOLD << "NETWORK SERVICES" << RESET << CYAN << "                   │" << RESET << std::endl;
	std::cout << CYAN << "  ═══════════════════════════════════════════════" << RESET << std::endl;
	
	services->add<ProtocolGame>(g_config.getNumber(ConfigManager::GAME_PORT));
	std::cout << YELLOW << "  ▸ " << RESET << "Game Port:       " << CYAN << g_config.getNumber(ConfigManager::GAME_PORT) << RESET << std::endl;
	
	if (g_config.getBoolean(ConfigManager::ENABLE_LIVE_CASTING)) {
		ProtocolGame::clearLiveCastInfo();
		services->add<ProtocolSpectator>(g_config.getNumber(ConfigManager::LIVE_CAST_PORT));
		std::cout << YELLOW << "  ▸ " << RESET << "Live Cast Port:  " << CYAN << g_config.getNumber(ConfigManager::LIVE_CAST_PORT) << RESET << std::endl;
	}
	services->add<ProtocolLogin>(g_config.getNumber(ConfigManager::LOGIN_PORT));
	std::cout << YELLOW << "  ▸ " << RESET << "Login Port:      " << CYAN << g_config.getNumber(ConfigManager::LOGIN_PORT) << RESET << std::endl;

	// OT protocols
	services->add<ProtocolStatus>(g_config.getNumber(ConfigManager::STATUS_PORT));
	std::cout << YELLOW << "  ▸ " << RESET << "Status Port:     " << CYAN << g_config.getNumber(ConfigManager::STATUS_PORT) << RESET << std::endl;

	// Legacy login protocol
	services->add<ProtocolOld>(g_config.getNumber(ConfigManager::LOGIN_PORT));

	RentPeriod_t rentPeriod;
	std::string strRentPeriod = asLowerCaseString(g_config.getString(ConfigManager::HOUSE_RENT_PERIOD));

	if (strRentPeriod == "yearly") {
		rentPeriod = RENTPERIOD_YEARLY;
	} else if (strRentPeriod == "weekly") {
		rentPeriod = RENTPERIOD_WEEKLY;
	} else if (strRentPeriod == "monthly") {
		rentPeriod = RENTPERIOD_MONTHLY;
	} else if (strRentPeriod == "daily") {
		rentPeriod = RENTPERIOD_DAILY;
	} else {
		rentPeriod = RENTPERIOD_NEVER;
	}

	g_game.map.houses.payHouses(rentPeriod);

	IOMarket::checkExpiredOffers();
	IOMarket::getInstance()->updateStatistics();

	std::cout << std::endl;
	std::cout << CYAN << "  ═══════════════════════════════════════════════" << RESET << std::endl;
	std::cout << GREEN << BOLD << "  ✓  All modules loaded successfully!" << RESET << std::endl;
	std::cout << CYAN << "  ═══════════════════════════════════════════════" << RESET << std::endl;
	std::cout << std::endl;

#ifndef _WIN32
	if (getuid() == 0 || geteuid() == 0) {
		std::cout << YELLOW << "  ⚠ Warning: " << RESET << STATUS_SERVER_NAME << " has been executed as root user!" << std::endl;
		std::cout << DIM << "    Consider running it as a normal user for security." << RESET << std::endl;
	}
#endif

	g_game.start(services);
	g_game.setGameState(GAME_STATE_NORMAL);
	
	std::cout << GREEN << BOLD << "  🐺 " << STATUS_SERVER_NAME << " is now online!" << RESET << std::endl;
	std::cout << std::endl;
	
	g_loaderSignal.notify_all();
}
