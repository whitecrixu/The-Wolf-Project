/**
 * The Wolf Project - A free and open-source MMORPG server emulator
 * Copyright (©) 2025-2026 The Wolf Project <jakub.polewka92@gmail.com>
 * Repository: https://wolf-project.org
 * License: https://wolf-project.org/license
 * Contributors: https://wolf-project.org/contributors
 * Website: https://wolf-project.org
 */

#pragma once

class LoggerFunctions {
public:
	static void init(lua_State* L);

private:
	static int luaSpdlogDebug(lua_State* L);
	static int luaSpdlogError(lua_State* L);
	static int luaSpdlogInfo(lua_State* L);
	static int luaSpdlogWarn(lua_State* L);

	static int luaLoggerDebug(lua_State* L);
	static int luaLoggerError(lua_State* L);
	static int luaLoggerInfo(lua_State* L);
	static int luaLoggerWarn(lua_State* L);
	static int luaLoggerTrace(lua_State* L);
};
