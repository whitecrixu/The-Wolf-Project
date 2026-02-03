/**
 * The Wolf Project - A free and open-source MMORPG server emulator
 * Copyright (©) 2025-2026 The Wolf Project <jakub.polewka92@gmail.com>
 * Repository: https://wolf-project.org
 * License: https://wolf-project.org/license
 * Contributors: https://wolf-project.org/contributors
 * Website: https://wolf-project.org
 */

#pragma once

#include "lua/scripts/luascript.hpp"
#include "lua/functions/map/house_functions.hpp"
#include "lua/functions/map/position_functions.hpp"
#include "lua/functions/map/teleport_functions.hpp"
#include "lua/functions/map/tile_functions.hpp"
#include "lua/functions/map/town_functions.hpp"

class MapFunctions final : LuaScriptInterface {
public:
	explicit MapFunctions(lua_State* L) :
		LuaScriptInterface("MapFunctions") {
		init(L);
	}
	~MapFunctions() override = default;

	static void init(lua_State* L) {
		HouseFunctions::init(L);
		PositionFunctions::init(L);
		TeleportFunctions::init(L);
		TileFunctions::init(L);
		TownFunctions::init(L);
	}
};
