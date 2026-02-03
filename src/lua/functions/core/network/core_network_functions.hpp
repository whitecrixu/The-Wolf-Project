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
#include "lua/functions/core/network/network_message_functions.hpp"
#include "lua/functions/core/network/webhook_functions.hpp"

class CoreNetworkFunctions final : LuaScriptInterface {
public:
	explicit CoreNetworkFunctions(lua_State* L) :
		LuaScriptInterface("CoreNetworkFunctions") {
		init(L);
	}
	~CoreNetworkFunctions() override = default;

	static void init(lua_State* L) {
		NetworkMessageFunctions::init(L);
		WebhookFunctions::init(L);
	}

private:
};
