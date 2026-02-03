/**
 * The Wolf Project - A free and open-source MMORPG server emulator
 * Copyright (©) 2025-2026 The Wolf Project <jakub.polewka92@gmail.com>
 * Repository: https://wolf-project.org
 * License: https://wolf-project.org/license
 * Contributors: https://wolf-project.org/contributors
 * Website: https://wolf-project.org
 */

#pragma once

class PositionFunctions {
public:
	static void init(lua_State* L);

private:
	static int luaPositionCreate(lua_State* L);
	static int luaPositionAdd(lua_State* L);
	static int luaPositionSub(lua_State* L);
	static int luaPositionCompare(lua_State* L);

	static int luaPositionGetDistance(lua_State* L);
	static int luaPositionGetPathTo(lua_State* L);
	static int luaPositionIsSightClear(lua_State* L);

	static int luaPositionGetTile(lua_State* L);
	static int luaPositionGetZones(lua_State* L);

	static int luaPositionSendMagicEffect(lua_State* L);
	static int luaPositionRemoveMagicEffect(lua_State* L);
	static int luaPositionSendDistanceEffect(lua_State* L);

	static int luaPositionSendSingleSoundEffect(lua_State* L);
	static int luaPositionSendDoubleSoundEffect(lua_State* L);

	static int luaPositionToString(lua_State* L);
};
