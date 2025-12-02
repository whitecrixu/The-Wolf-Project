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

#include "scriptmanager.h"

#include "actions.h"
#include "chat.h"
#include "talkaction.h"
#include "spells.h"
#include "movement.h"
#include "weapons.h"
#include "globalevent.h"
#include "events.h"
#include "modules.h"

#include <dirent.h>
#include <sys/stat.h>

Actions* g_actions = nullptr;
CreatureEvents* g_creatureEvents = nullptr;
Chat* g_chat = nullptr;
Events* g_events = nullptr;
GlobalEvents* g_globalEvents = nullptr;
Spells* g_spells = nullptr;
TalkActions* g_talkActions = nullptr;
MoveEvents* g_moveEvents = nullptr;
Weapons* g_weapons = nullptr;
Modules* g_modules = nullptr;

extern LuaEnvironment g_luaEnvironment;

ScriptingManager::~ScriptingManager()
{
	delete g_events;
	delete g_weapons;
	delete g_spells;
	delete g_actions;
	delete g_talkActions;
	delete g_moveEvents;
	delete g_chat;
	delete g_creatureEvents;
	delete g_globalEvents;
}

bool ScriptingManager::loadScriptSystems()
{
	if (g_luaEnvironment.loadFile("data/global.lua") == -1) {
		std::cout << "[Warning - ScriptingManager::loadScriptSystems] Can not load data/global.lua" << std::endl;
	}

	g_chat = new Chat();

	g_weapons = new Weapons();
	if (!g_weapons->loadFromXml()) {
		std::cout << "> ERROR: Unable to load weapons!" << std::endl;
		return false;
	}

	g_weapons->loadDefaults();

	g_spells = new Spells();
	if (!g_spells->loadFromXml()) {
		std::cout << "> ERROR: Unable to load spells!" << std::endl;
		return false;
	}

	g_actions = new Actions();
	if (!g_actions->loadFromXml()) {
		std::cout << "> ERROR: Unable to load actions!" << std::endl;
		return false;
	}

	g_talkActions = new TalkActions();
	if (!g_talkActions->loadFromXml()) {
		std::cout << "> ERROR: Unable to load talk actions!" << std::endl;
		return false;
	}

	g_moveEvents = new MoveEvents();
	if (!g_moveEvents->loadFromXml()) {
		std::cout << "> ERROR: Unable to load move events!" << std::endl;
		return false;
	}

	g_creatureEvents = new CreatureEvents();
	if (!g_creatureEvents->loadFromXml()) {
		std::cout << "> ERROR: Unable to load creature events!" << std::endl;
		return false;
	}

	g_globalEvents = new GlobalEvents();
	if (!g_globalEvents->loadFromXml()) {
		std::cout << "> ERROR: Unable to load global events!" << std::endl;
		return false;
	}

	g_events = new Events();
	if (!g_events->load()) {
		std::cout << "> ERROR: Unable to load events!" << std::endl;
		return false;
	}

	g_modules = new Modules();
	if (!g_modules->loadFromXml()) {
		std::cout << "> ERROR: Unable to load modules!" << std::endl;
		return false;
	}

	// Load RevScriptSys scripts from data/scripts/
	loadRevScriptSysScripts();

	return true;
}

void ScriptingManager::loadRevScriptSysScriptsFromDir(const std::string& path, uint32_t& scriptsLoaded)
{
	DIR* dir = opendir(path.c_str());
	if (!dir) {
		return;
	}

	struct dirent* entry;
	while ((entry = readdir(dir)) != nullptr) {
		std::string name = entry->d_name;
		if (name == "." || name == "..") {
			continue;
		}

		std::string fullPath = path + "/" + name;
		
		struct stat st;
		if (stat(fullPath.c_str(), &st) == 0) {
			if (S_ISDIR(st.st_mode)) {
				// Recurse into subdirectory
				loadRevScriptSysScriptsFromDir(fullPath, scriptsLoaded);
			} else if (S_ISREG(st.st_mode)) {
				// Check if it's a .lua file
				size_t len = name.length();
				if (len > 4 && name.substr(len - 4) == ".lua") {
					if (g_luaEnvironment.loadFile(fullPath) == -1) {
						std::cout << "[Warning - RevScriptSys] Can not load script: " << fullPath << std::endl;
						std::cout << g_luaEnvironment.getLastLuaError() << std::endl;
					} else {
						scriptsLoaded++;
					}
				}
			}
		}
	}

	closedir(dir);
}

void ScriptingManager::loadRevScriptSysScripts()
{
	std::string scriptsPath = "data/scripts";
	
	struct stat st;
	if (stat(scriptsPath.c_str(), &st) != 0 || !S_ISDIR(st.st_mode)) {
		return;
	}

	uint32_t scriptsLoaded = 0;
	loadRevScriptSysScriptsFromDir(scriptsPath, scriptsLoaded);

	// Load Lua monster definitions
	std::string monsterLuaPath = "data/monster/lua";
	if (stat(monsterLuaPath.c_str(), &st) == 0 && S_ISDIR(st.st_mode)) {
		uint32_t monstersLoaded = 0;
		loadRevScriptSysScriptsFromDir(monsterLuaPath, monstersLoaded);
	}
}
