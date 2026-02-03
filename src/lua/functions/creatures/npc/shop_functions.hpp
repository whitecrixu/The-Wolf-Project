/**
 * The Wolf Project - A free and open-source MMORPG server emulator
 * Copyright (©) 2025-2026 The Wolf Project <jakub.polewka92@gmail.com>
 * Repository: https://wolf-project.org
 * License: https://wolf-project.org/license
 * Contributors: https://wolf-project.org/contributors
 * Website: https://wolf-project.org
 */

#pragma once

class ShopFunctions {
public:
	static void init(lua_State* L);

private:
	static int luaCreateShop(lua_State* L);
	static int luaShopSetId(lua_State* L);
	static int luaShopSetIdFromName(lua_State* L);
	static int luaShopSetNameItem(lua_State* L);
	static int luaShopSetCount(lua_State* L);
	static int luaShopSetBuyPrice(lua_State* L);
	static int luaShopSetSellPrice(lua_State* L);
	static int luaShopSetStorageKey(lua_State* L);
	static int luaShopSetStorageValue(lua_State* L);
	static int luaShopAddChildShop(lua_State* L);
};
