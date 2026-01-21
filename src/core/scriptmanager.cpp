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

#ifdef USE_RUST_LUA
#include "rustlua.h"
#endif

#include <filesystem>
namespace fs = std::filesystem;

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
#ifdef USE_RUST_LUA
	// Use Rust Lua to load scripts - Rust calls back to C++ to register monsters/spells
	if (RustLua::Engine::getInstance().isInitialized()) {
		std::cout << "    [*] Loading scripts via Rust Lua..." << std::endl;
		if (!RustLua::Engine::getInstance().loadScripts("data")) {
			std::cout << "> ERROR: Rust Lua failed to load scripts!" << std::endl;
			return false;
		}
		std::cout << "    [*] Rust Lua scripts loaded [OK]" << std::endl;
	} else {
		std::cout << "> ERROR: Rust Lua not initialized!" << std::endl;
		return false;
	}
#else
	// Fallback to C++ Lua
	if (g_luaEnvironment.loadFile("data/global.lua") == -1) {
		std::cout << "[Warning - ScriptingManager::loadScriptSystems] Can not load data/global.lua" << std::endl;
	}
#endif

	g_chat = new Chat();

	g_weapons = new Weapons();
	if (!g_weapons->loadFromXml()) {
		std::cout << "> ERROR: Unable to load weapons!" << std::endl;
		return false;
	}

	g_weapons->loadDefaults();

	g_spells = new Spells();
	g_actions = new Actions();
	g_talkActions = new TalkActions();
	g_moveEvents = new MoveEvents();
	g_creatureEvents = new CreatureEvents();
	g_globalEvents = new GlobalEvents();

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

#ifndef USE_RUST_LUA
	// Only load C++ RevScriptSys if Rust not available
	loadRevScriptSysScripts();
#endif

	return true;
}

void ScriptingManager::loadRevScriptSysScriptsFromDir(const std::string& path, uint32_t& scriptsLoaded)
{
	if (!fs::exists(path) || !fs::is_directory(path)) {
		return;
	}

	for (const auto& entry : fs::recursive_directory_iterator(path)) {
		if (entry.is_regular_file() && entry.path().extension() == ".lua") {
			std::string fullPath = entry.path().string();
			// Normalize path separators
			std::replace(fullPath.begin(), fullPath.end(), '\\', '/');
			if (g_luaEnvironment.loadFile(fullPath) == -1) {
				std::cout << "[Warning - RevScriptSys] Can not load script: " << fullPath << std::endl;
				std::cout << g_luaEnvironment.getLastLuaError() << std::endl;
			} else {
				scriptsLoaded++;
			}
		}
	}
}

void ScriptingManager::loadRevScriptSysScripts()
{
	std::string scriptsPath = "data/scripts";
	
	if (!fs::exists(scriptsPath) || !fs::is_directory(scriptsPath)) {
		return;
	}

	scriptsLoadedCount = 0;
	loadRevScriptSysScriptsFromDir(scriptsPath, scriptsLoadedCount);

	// Load Lua monster definitions
	std::string monsterLuaPath = "data/monster/lua";
	if (fs::exists(monsterLuaPath) && fs::is_directory(monsterLuaPath)) {
		monstersLoadedCount = 0;
		loadRevScriptSysScriptsFromDir(monsterLuaPath, monstersLoadedCount);
	}

	// Load Lua NPC definitions
	std::string npcLuaPath = "data/npc/lua";
	if (fs::exists(npcLuaPath) && fs::is_directory(npcLuaPath)) {
		npcsLoadedCount = 0;
		loadRevScriptSysScriptsFromDir(npcLuaPath, npcsLoadedCount);
	}
}
