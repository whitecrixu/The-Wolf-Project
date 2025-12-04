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
#include "spells.h"
#include "npc.h"
#include "rsa.h"
#include "protocolspectator.h"
#include "protocolold.h"
#include "protocollogin.h"
#include "protocolstatus.h"
#include "databasemanager.h"
#include "scheduler.h"
#include "databasetasks.h"

extern Spells* g_spells;

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
		std::cout << "\033[31m  [FAIL] No services running. The server is NOT online.\033[0m" << std::endl;
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
	const char* WHITE = "\033[97m";
	const char* DIM = "\033[2m";
	const char* BLUE = "\033[34m";
	const char* BRIGHT_CYAN = "\033[96m";
	const char* BRIGHT_WHITE = "\033[97m";
	const char* BRIGHT_MAGENTA = "\033[95m";
	const char* BRIGHT_YELLOW = "\033[93m";

	// Suppress unused variable warnings
	(void)RED; (void)BLUE; (void)WHITE; (void)YELLOW; (void)BRIGHT_YELLOW;

	// Clear screen and move cursor to top
	std::cout << "\033[2J\033[H";

	// Wolf Project Banner
	std::cout << std::endl;
	std::cout << BRIGHT_MAGENTA << BOLD << "           The Wolf Project Server" << RESET << std::endl;
	std::cout << std::endl;
	std::cout << DIM << "        v1.0.0  |  Howling Moon  |  J.Polewka" << RESET << std::endl;
	std::cout << DIM << "             github.com/whitecrixu" << RESET << std::endl;
	std::cout << std::endl;

	// Loading Section
	std::cout << BRIGHT_CYAN << BOLD << "    INITIALIZING" << RESET << std::endl;
	std::cout << std::endl;

	// read global config
	std::cout << RESET << "    " << RESET << "[*] Config" << std::flush;
	if (!g_config.load()) {
		std::cout << " [FAIL]" << std::endl;
		startupErrorMessage("Unable to load config.lua!");
		return;
	}
	std::cout << GREEN << " [OK]" << RESET << std::endl;

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

	std::cout << RESET << "    " << RESET << "[*] Database" << std::flush;

	Database* db = Database::getInstance();
	if (!db->connect()) {
		std::cout << " [FAIL]" << std::endl;
		startupErrorMessage("Failed to connect to database.");
		return;
	}

	std::cout << GREEN << " [OK]" << RESET << " (MySQL " << Database::getClientVersion() << ")" << std::endl;

	// run database manager
	std::cout << RESET << "    " << RESET << "[*] DB Manager" << std::flush;

	if (!DatabaseManager::isDatabaseSetup()) {
		std::cout << " [FAIL]" << std::endl;
		startupErrorMessage("The database you have specified in config.lua is empty, please import the schema.sql to your database.");
		return;
	}
	g_databaseTasks.start();

	DatabaseManager::updateDatabase();
	std::cout << GREEN << " [OK]" << RESET << std::endl;

	if (g_config.getBoolean(ConfigManager::OPTIMIZE_DATABASE) && !DatabaseManager::optimizeTables()) {
		std::cout << DIM << "    No tables needed optimization." << RESET << std::endl;
	}

	//load vocations
	std::cout << RESET << "    " << RESET << "[*] Vocations" << std::flush;
	if (!g_vocations.loadFromXml()) {
		std::cout << " [FAIL]" << std::endl;
		startupErrorMessage("Unable to load vocations!");
		return;
	}
	std::cout << GREEN << " [OK]" << RESET << std::endl;

	// load item data
	std::cout << RESET << "    " << RESET << "[*] Items" << std::flush;
	if (Item::items.loadFromOtb("data/items/items.otb") != ERROR_NONE) {
		std::cout << RED << " [FAIL]" << RESET << std::endl;
		startupErrorMessage("Unable to load items (OTB)!");
		return;
	}

	if (!Item::items.loadFromXml()) {
		std::cout << RED << " [FAIL]" << RESET << std::endl;
		startupErrorMessage("Unable to load items (XML)!");
		return;
	}
	std::cout << GREEN << " [OK] " << RESET << "(" << DIM << Item::items.size() << " items" << RESET << ")" << std::endl;

	std::cout << RESET << "    " << RESET << "[*] Scripts" << std::flush;
	if (!ScriptingManager::getInstance()->loadScriptSystems()) {
		std::cout << RED << " [FAIL]" << RESET << std::endl;
		startupErrorMessage("Failed to load script systems");
		return;
	}
	ScriptingManager* sm = ScriptingManager::getInstance();
	std::cout << GREEN << " [OK] " << RESET << "(" << DIM 
		<< sm->getScriptsLoadedCount() << " scripts, "
		<< (g_spells ? g_spells->getTotalSpellsCount() : 0) << " spells, "
		<< g_npcTypes.getNpcTypeCount() << " npcs" << RESET << ")" << std::endl;

	std::cout << RESET << "    " << RESET << "[*] Monsters" << std::flush;
	if (!g_monsters.loadFromXml()) {
		std::cout << RED << " [FAIL]" << RESET << std::endl;
		startupErrorMessage("Unable to load monsters!");
		return;
	}
	std::cout << GREEN << " [OK] " << RESET << "(" << DIM << g_monsters.getMonsterCount() << " types" << RESET << ")" << std::endl;

	std::cout << RESET << "    " << RESET << "[*] Outfits" << std::flush;
	Outfits* outfits = Outfits::getInstance();
	if (!outfits->loadFromXml()) {
		std::cout << RED << " [FAIL]" << RESET << std::endl;
		startupErrorMessage("Unable to load outfits!");
		return;
	}
	std::cout << GREEN << " [OK]" << RESET << std::endl;

	std::cout << RESET << "    " << RESET << "[*] World: " << std::flush;
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

	std::cout << RESET << "    " << RESET << "[*] Map" << std::flush;
	if (!g_game.loadMainMap(g_config.getString(ConfigManager::MAP_NAME))) {
		std::cout << RED << " [FAIL]" << RESET << std::endl;
		startupErrorMessage("Failed to load map");
		return;
	}
	std::cout << GREEN << " .............. OK" << RESET << std::endl;

	std::cout << RESET << "    " << RESET << "[*] Gamestate" << std::flush;
	g_game.setGameState(GAME_STATE_INIT);
	std::cout << GREEN << " ........... OK" << RESET << std::endl;
	std::cout << std::endl;

	// Game client protocols
	std::cout << BRIGHT_CYAN << BOLD << "    NETWORK" << RESET << std::endl;
	std::cout << std::endl;
	
	services->add<ProtocolGame>(g_config.getNumber(ConfigManager::GAME_PORT));
	std::cout << RESET << "    " << RESET << DIM << "Game:      " << RESET << BRIGHT_CYAN << g_config.getNumber(ConfigManager::GAME_PORT) << RESET << std::endl;
	
	if (g_config.getBoolean(ConfigManager::ENABLE_LIVE_CASTING)) {
		ProtocolGame::clearLiveCastInfo();
		services->add<ProtocolSpectator>(g_config.getNumber(ConfigManager::LIVE_CAST_PORT));
		std::cout << RESET << "    " << RESET << DIM << "Live Cast: " << RESET << BRIGHT_CYAN << g_config.getNumber(ConfigManager::LIVE_CAST_PORT) << RESET << std::endl;
	}
	services->add<ProtocolLogin>(g_config.getNumber(ConfigManager::LOGIN_PORT));
	std::cout << RESET << "    " << RESET << DIM << "Login:     " << RESET << BRIGHT_CYAN << g_config.getNumber(ConfigManager::LOGIN_PORT) << RESET << std::endl;

	// OT protocols
	services->add<ProtocolStatus>(g_config.getNumber(ConfigManager::STATUS_PORT));
	std::cout << RESET << "    " << RESET << DIM << "Status:    " << RESET << BRIGHT_CYAN << g_config.getNumber(ConfigManager::STATUS_PORT) << RESET << std::endl;
	std::cout << std::endl;

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
	std::cout << GREEN << BOLD << "    SERVER READY - ALL SYSTEMS GO" << RESET << std::endl;
	std::cout << std::endl;

#ifndef _WIN32
	if (getuid() == 0 || geteuid() == 0) {
		std::cout << YELLOW << "    [!] Warning: " << RESET << STATUS_SERVER_NAME << " running as root!" << std::endl;
	}
#endif

	g_game.start(services);
	g_game.setGameState(GAME_STATE_NORMAL);
	
	std::cout << BRIGHT_CYAN << "    >>> " << BRIGHT_WHITE << BOLD << STATUS_SERVER_NAME << RESET << " is now " << GREEN << BOLD << "ONLINE" << RESET << BRIGHT_CYAN << "! <<<" << RESET << std::endl;
	std::cout << std::endl;
	
	g_loaderSignal.notify_all();
}
