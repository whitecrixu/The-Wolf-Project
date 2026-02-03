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
#include "lua/functions/core/game/config_functions.hpp"
#include "lua/functions/core/game/game_functions.hpp"
#include "lua/functions/core/game/bank_functions.hpp"
#include "lua/functions/core/game/global_functions.hpp"
#include "lua/functions/core/game/lua_enums.hpp"
#include "lua/functions/core/game/modal_window_functions.hpp"

class CoreGameFunctions final : LuaScriptInterface {
public:
	explicit CoreGameFunctions(lua_State* L) :
		LuaScriptInterface("CoreGameFunctions") {
		init(L);
	}
	~CoreGameFunctions() override = default;

	static void init(lua_State* L) {
		ConfigFunctions::init(L);
		GameFunctions::init(L);
		BankFunctions::init(L);
		GlobalFunctions::init(L);
		LuaEnums::init(L);
		ModalWindowFunctions::init(L);
	}

private:
};
