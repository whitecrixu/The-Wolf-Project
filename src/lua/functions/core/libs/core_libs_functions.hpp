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
#include "lua/functions/core/libs/db_functions.hpp"
#include "lua/functions/core/libs/result_functions.hpp"
#include "lua/functions/core/libs/logger_functions.hpp"
#include "lua/functions/core/libs/metrics_functions.hpp"
#include "lua/functions/core/libs/kv_functions.hpp"

class CoreLibsFunctions final : LuaScriptInterface {
public:
	explicit CoreLibsFunctions(lua_State* L) :
		LuaScriptInterface("CoreLibsFunctions") {
		init(L);
	}
	~CoreLibsFunctions() override = default;

	static void init(lua_State* L) {
		DBFunctions::init(L);
		ResultFunctions::init(L);
		LoggerFunctions::init(L);
		MetricsFunctions::init(L);
		KVFunctions::init(L);
	}

private:
};
