/**
 * The Wolf Project - A free and open-source MMORPG server emulator
 * Copyright (©) 2025-2026 The Wolf Project <jakub.polewka92@gmail.com>
 * Repository: https://wolf-project.org
 * License: https://wolf-project.org/license
 * Contributors: https://wolf-project.org/contributors
 * Website: https://wolf-project.org
 */

#pragma once

class ImbuementFunctions {
public:
	static void init(lua_State* L);

private:
	static int luaCreateImbuement(lua_State* L);
	static int luaImbuementGetName(lua_State* L);
	static int luaImbuementGetId(lua_State* L);
	static int luaImbuementGetItems(lua_State* L);
	static int luaImbuementGetBase(lua_State* L);
	static int luaImbuementGetCategory(lua_State* L);
	static int luaImbuementIsPremium(lua_State* L);
	static int luaImbuementGetElementDamage(lua_State* L);
	static int luaImbuementGetCombatType(lua_State* L);
};
