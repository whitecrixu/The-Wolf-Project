/**
 * The Wolf Project - A free and open-source MMORPG server emulator
 * Copyright (©) 2025-2026 The Wolf Project <jakub.polewka92@gmail.com>
 * Repository: https://wolf-project.org
 * License: https://wolf-project.org/license
 * Contributors: https://wolf-project.org/contributors
 * Website: https://wolf-project.org
 */

#pragma once

class NetworkMessageFunctions {
public:
	static void init(lua_State* L);

private:
	static int luaNetworkMessageCreate(lua_State* L);

	static int luaNetworkMessageGetByte(lua_State* L);
	static int luaNetworkMessageGetU16(lua_State* L);
	static int luaNetworkMessageGetU32(lua_State* L);
	static int luaNetworkMessageGetU64(lua_State* L);
	static int luaNetworkMessageGetString(lua_State* L);
	static int luaNetworkMessageGetPosition(lua_State* L);

	static int luaNetworkMessageAddByte(lua_State* L);
	static int luaNetworkMessageAddU16(lua_State* L);
	static int luaNetworkMessageAddU32(lua_State* L);
	static int luaNetworkMessageAddU64(lua_State* L);
	static int luaNetworkMessageAdd8(lua_State* L);
	static int luaNetworkMessageAdd16(lua_State* L);
	static int luaNetworkMessageAdd32(lua_State* L);
	static int luaNetworkMessageAdd64(lua_State* L);
	static int luaNetworkMessageAddString(lua_State* L);
	static int luaNetworkMessageAddPosition(lua_State* L);
	static int luaNetworkMessageAddDouble(lua_State* L);
	static int luaNetworkMessageAddItem(lua_State* L);

	static int luaNetworkMessageReset(lua_State* L);
	static int luaNetworkMessageSkipBytes(lua_State* L);
	static int luaNetworkMessageSendToPlayer(lua_State* L);
};
