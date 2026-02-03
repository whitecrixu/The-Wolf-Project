/**
 * The Wolf Project - A free and open-source MMORPG server emulator
 * Copyright (©) 2025-2026 The Wolf Project <jakub.polewka92@gmail.com>
 * Repository: https://wolf-project.org
 * License: https://wolf-project.org/license
 * Contributors: https://wolf-project.org/contributors
 * Website: https://wolf-project.org
 */

#pragma once

class MonsterSpellFunctions {
public:
	static void init(lua_State* L);

private:
	static int luaCreateMonsterSpell(lua_State* L);
	static int luaMonsterSpellSetType(lua_State* L);
	static int luaMonsterSpellSetScriptName(lua_State* L);
	static int luaMonsterSpellSetChance(lua_State* L);
	static int luaMonsterSpellSetInterval(lua_State* L);
	static int luaMonsterSpellSetRange(lua_State* L);
	static int luaMonsterSpellSetCombatValue(lua_State* L);
	static int luaMonsterSpellSetCombatType(lua_State* L);
	static int luaMonsterSpellSetAttackValue(lua_State* L);
	static int luaMonsterSpellSetNeedTarget(lua_State* L);
	static int luaMonsterSpellSetCombatLength(lua_State* L);
	static int luaMonsterSpellSetCombatSpread(lua_State* L);
	static int luaMonsterSpellSetCombatRadius(lua_State* L);
	static int luaMonsterSpellSetConditionType(lua_State* L);
	static int luaMonsterSpellSetConditionDamage(lua_State* L);
	static int luaMonsterSpellSetConditionSpeedChange(lua_State* L);
	static int luaMonsterSpellSetConditionDuration(lua_State* L);
	static int luaMonsterSpellSetConditionTickInterval(lua_State* L);
	static int luaMonsterSpellSetCombatShootEffect(lua_State* L);
	static int luaMonsterSpellSetCombatEffect(lua_State* L);
	static int luaMonsterSpellSetOutfitMonster(lua_State* L);
	static int luaMonsterSpellSetOutfitItem(lua_State* L);
	static int luaMonsterSpellCastSound(lua_State* L);
	static int luaMonsterSpellImpactSound(lua_State* L);
};
