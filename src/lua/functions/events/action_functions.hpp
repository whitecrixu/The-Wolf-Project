/**
 * The Wolf Project - A free and open-source MMORPG server emulator
 * Copyright (©) 2025-2026 The Wolf Project <jakub.polewka92@gmail.com>
 * Repository: https://wolf-project.org
 * License: https://wolf-project.org/license
 * Contributors: https://wolf-project.org/contributors
 * Website: https://wolf-project.org
 */

#pragma once

class ActionFunctions {
public:
	static void init(lua_State* L);

private:
	static int luaCreateAction(lua_State* L);
	static int luaActionOnUse(lua_State* L);
	static int luaActionRegister(lua_State* L);
	static int luaActionItemId(lua_State* L);
	static int luaActionActionId(lua_State* L);
	static int luaActionUniqueId(lua_State* L);
	static int luaActionPosition(lua_State* L);
	static int luaActionAllowFarUse(lua_State* L);
	static int luaActionBlockWalls(lua_State* L);
	static int luaActionCheckFloor(lua_State* L);
};
