/**
 * The Wolf Project - A free and open-source MMORPG server emulator
 * Copyright (©) 2025-2026 The Wolf Project <jakub.polewka92@gmail.com>
 * Repository: https://wolf-project.org
 * License: https://wolf-project.org/license
 * Contributors: https://wolf-project.org/contributors
 * Website: https://wolf-project.org
 */

#pragma once

class CharmFunctions {
public:
	static void init(lua_State* L);

private:
	static int luaCharmCreate(lua_State* L);
	static int luaCharmName(lua_State* L);
	static int luaCharmDescription(lua_State* L);
	static int luaCharmType(lua_State* L);
	static int luaCharmPoints(lua_State* L);
	static int luaCharmDamageType(lua_State* L);
	static int luaCharmPercentage(lua_State* L);
	static int luaCharmChance(lua_State* L);
	static int luaCharmMessageCancel(lua_State* L);
	static int luaCharmMessageServerLog(lua_State* L);
	static int luaCharmEffect(lua_State* L);
	static int luaCharmCastSound(lua_State* L);
	static int luaCharmImpactSound(lua_State* L);
};
