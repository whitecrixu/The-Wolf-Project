/**
 * The Wolf Project - A free and open-source MMORPG server emulator
 * Copyright (©) 2025-2026 The Wolf Project <jakub.polewka92@gmail.com>
 * Repository: https://wolf-project.org
 * License: https://wolf-project.org/license
 * Contributors: https://wolf-project.org/contributors
 * Website: https://wolf-project.org
 */

#pragma once

class GuildFunctions {
public:
	static void init(lua_State* L);

private:
	static int luaGuildCreate(lua_State* L);

	static int luaGuildGetId(lua_State* L);
	static int luaGuildGetName(lua_State* L);
	static int luaGuildGetMembersOnline(lua_State* L);

	static int luaGuildGetBankBalance(lua_State* L);
	static int luaGuildSetBankBalance(lua_State* L);

	static int luaGuildAddRank(lua_State* L);
	static int luaGuildGetRankById(lua_State* L);
	static int luaGuildGetRankByLevel(lua_State* L);

	static int luaGuildGetMotd(lua_State* L);
	static int luaGuildSetMotd(lua_State* L);
};
