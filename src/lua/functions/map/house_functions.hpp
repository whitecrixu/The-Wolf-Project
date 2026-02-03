/**
 * The Wolf Project - A free and open-source MMORPG server emulator
 * Copyright (©) 2025-2026 The Wolf Project <jakub.polewka92@gmail.com>
 * Repository: https://wolf-project.org
 * License: https://wolf-project.org/license
 * Contributors: https://wolf-project.org/contributors
 * Website: https://wolf-project.org
 */

#pragma once

class HouseFunctions {
public:
	static void init(lua_State* L);

private:
	static int luaHouseCreate(lua_State* L);

	static int luaHouseGetId(lua_State* L);
	static int luaHouseGetName(lua_State* L);
	static int luaHouseGetTown(lua_State* L);
	static int luaHouseGetExitPosition(lua_State* L);
	static int luaHouseGetRent(lua_State* L);
	static int luaHouseGetPrice(lua_State* L);

	static int luaHouseGetOwnerGuid(lua_State* L);
	static int luaHouseSetHouseOwner(lua_State* L);
	static int luaHouseSetNewOwnerGuid(lua_State* L);
	static int luaHouseHasItemOnTile(lua_State* L);
	static int luaHouseHasNewOwnership(lua_State* L);
	static int luaHouseStartTrade(lua_State* L);

	static int luaHouseGetBeds(lua_State* L);
	static int luaHouseGetBedCount(lua_State* L);

	static int luaHouseGetDoors(lua_State* L);
	static int luaHouseGetDoorCount(lua_State* L);
	static int luaHouseGetDoorIdByPosition(lua_State* L);

	static int luaHouseGetTiles(lua_State* L);
	static int luaHouseGetItems(lua_State* L);
	static int luaHouseGetTileCount(lua_State* L);

	static int luaHouseCanEditAccessList(lua_State* L);
	static int luaHouseGetAccessList(lua_State* L);
	static int luaHouseSetAccessList(lua_State* L);

	static int luaHouseKickPlayer(lua_State* L);
	static int luaHouseIsInvited(lua_State* L);
};
