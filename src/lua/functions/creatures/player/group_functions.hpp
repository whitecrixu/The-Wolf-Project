/**
 * The Wolf Project - A free and open-source MMORPG server emulator
 * Copyright (©) 2025-2026 The Wolf Project <jakub.polewka92@gmail.com>
 * Repository: https://wolf-project.org
 * License: https://wolf-project.org/license
 * Contributors: https://wolf-project.org/contributors
 * Website: https://wolf-project.org
 */

#pragma once

class GroupFunctions {
public:
	static void init(lua_State* L);

private:
	static int luaGroupCreate(lua_State* L);

	static int luaGroupGetId(lua_State* L);
	static int luaGroupGetName(lua_State* L);
	static int luaGroupGetFlags(lua_State* L);
	static int luaGroupGetAccess(lua_State* L);
	static int luaGroupGetMaxDepotItems(lua_State* L);
	static int luaGroupGetMaxVipEntries(lua_State* L);
	static int luaGroupHasFlag(lua_State* L);
};
