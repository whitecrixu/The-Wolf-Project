/**
 * The Wolf Project - A free and open-source MMORPG server emulator
 * Copyright (©) 2025-2026 The Wolf Project <jakub.polewka92@gmail.com>
 * Repository: https://wolf-project.org
 * License: https://wolf-project.org/license
 * Contributors: https://wolf-project.org/contributors
 * Website: https://wolf-project.org
 */

#pragma once

class LootFunctions {
public:
	static void init(lua_State* L);

private:
	static int luaCreateLoot(lua_State* L);
	static int luaDeleteLoot(lua_State* L);
	static int luaLootSetId(lua_State* L);
	static int luaLootSetIdFromName(lua_State* L);
	static int luaLootSetMinCount(lua_State* L);
	static int luaLootSetMaxCount(lua_State* L);
	static int luaLootSetSubType(lua_State* L);
	static int luaLootSetChance(lua_State* L);
	static int luaLootSetActionId(lua_State* L);
	static int luaLootSetText(lua_State* L);
	static int luaLootSetNameItem(lua_State* L);
	static int luaLootSetArticle(lua_State* L);
	static int luaLootSetAttack(lua_State* L);
	static int luaLootSetDefense(lua_State* L);
	static int luaLootSetExtraDefense(lua_State* L);
	static int luaLootSetArmor(lua_State* L);
	static int luaLootSetShootRange(lua_State* L);
	static int luaLootSetHitChance(lua_State* L);
	static int luaLootSetUnique(lua_State* L);
	static int luaLootAddChildLoot(lua_State* L);
};
