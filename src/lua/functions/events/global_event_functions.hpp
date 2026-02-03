/**
 * The Wolf Project - A free and open-source MMORPG server emulator
 * Copyright (©) 2025-2026 The Wolf Project <jakub.polewka92@gmail.com>
 * Repository: https://wolf-project.org
 * License: https://wolf-project.org/license
 * Contributors: https://wolf-project.org/contributors
 * Website: https://wolf-project.org
 */

#pragma once

class GlobalEventFunctions {
public:
	static void init(lua_State* L);

private:
	static int luaCreateGlobalEvent(lua_State* L);
	static int luaGlobalEventType(lua_State* L);
	static int luaGlobalEventRegister(lua_State* L);
	static int luaGlobalEventOnCallback(lua_State* L);
	static int luaGlobalEventTime(lua_State* L);
	static int luaGlobalEventInterval(lua_State* L);
};
