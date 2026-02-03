/**
 * The Wolf Project - A free and open-source MMORPG server emulator
 * Copyright (©) 2025-2026 The Wolf Project <jakub.polewka92@gmail.com>
 * Repository: https://wolf-project.org
 * License: https://wolf-project.org/license
 * Contributors: https://wolf-project.org/contributors
 * Website: https://wolf-project.org
 */

#pragma once

class ContainerFunctions {
private:
	static void init(lua_State* L);

	static int luaContainerCreate(lua_State* L);

	static int luaContainerGetSize(lua_State* L);
	static int luaContainerGetMaxCapacity(lua_State* L);
	static int luaContainerGetCapacity(lua_State* L);
	static int luaContainerGetEmptySlots(lua_State* L);

	static int luaContainerGetContentDescription(lua_State* L);
	static int luaContainerGetItems(lua_State* L);
	static int luaContainerGetItemHoldingCount(lua_State* L);
	static int luaContainerGetItemCountById(lua_State* L);

	static int luaContainerGetItem(lua_State* L);
	static int luaContainerHasItem(lua_State* L);
	static int luaContainerAddItem(lua_State* L);
	static int luaContainerAddItemEx(lua_State* L);

	static int luaContainerGetCorpseOwner(lua_State* L);
	static int luaContainerRegisterReward(lua_State* L);

	friend class ItemFunctions;
};
