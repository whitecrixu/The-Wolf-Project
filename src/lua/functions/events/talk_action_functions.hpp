/**
 * The Wolf Project - A free and open-source MMORPG server emulator
 * Copyright (©) 2025-2026 The Wolf Project <jakub.polewka92@gmail.com>
 * Repository: https://wolf-project.org
 * License: https://wolf-project.org/license
 * Contributors: https://wolf-project.org/contributors
 * Website: https://wolf-project.org
 */

#pragma once

class TalkActionFunctions {
public:
	static void init(lua_State* L);

private:
	static int luaCreateTalkAction(lua_State* L);
	static int luaTalkActionOnSay(lua_State* L);
	static int luaTalkActionGroupType(lua_State* L);
	static int luaTalkActionRegister(lua_State* L);
	static int luaTalkActionSeparator(lua_State* L);
	static int luaTalkActionGetName(lua_State* L);
	static int luaTalkActionGetDescription(lua_State* L);
	static int luaTalkActionSetDescription(lua_State* L);
	static int luaTalkActionGetGroupType(lua_State* L);
};
