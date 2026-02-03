/**
 * The Wolf Project - A free and open-source MMORPG server emulator
 * Copyright (©) 2025-2026 The Wolf Project <jakub.polewka92@gmail.com>
 * Repository: https://wolf-project.org
 * License: https://wolf-project.org/license
 * Contributors: https://wolf-project.org/contributors
 * Website: https://wolf-project.org
 */

#pragma once

#include "lua/functions/creatures/combat/condition_functions.hpp"
#include "lua/functions/creatures/combat/spell_functions.hpp"
#include "lua/functions/creatures/combat/variant_functions.hpp"

class CombatFunctions {
public:
	static void init(lua_State* L);

private:
	static int luaCombatCreate(lua_State* L);

	static int luaCombatSetParameter(lua_State* L);
	static int luaCombatSetFormula(lua_State* L);

	static int luaCombatSetArea(lua_State* L);
	static int luaCombatSetCondition(lua_State* L);
	static int luaCombatSetCallback(lua_State* L);
	static int luaCombatSetOrigin(lua_State* L);

	static int luaCombatExecute(lua_State* L);
};
