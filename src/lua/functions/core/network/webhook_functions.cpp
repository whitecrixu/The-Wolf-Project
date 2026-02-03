/**
 * The Wolf Project - A free and open-source MMORPG server emulator
 * Copyright (©) 2025-2026 The Wolf Project <jakub.polewka92@gmail.com>
 * Repository: https://wolf-project.org
 * License: https://wolf-project.org/license
 * Contributors: https://wolf-project.org/contributors
 * Website: https://wolf-project.org
 */

#include "lua/functions/core/network/webhook_functions.hpp"

#include "server/network/webhook/webhook.hpp"
#include "lua/functions/lua_functions_loader.hpp"

void WebhookFunctions::init(lua_State* L) {
	Lua::registerTable(L, "Webhook");
	Lua::registerMethod(L, "Webhook", "sendMessage", WebhookFunctions::luaWebhookSendMessage);
}

int WebhookFunctions::luaWebhookSendMessage(lua_State* L) {
	// Webhook.sendMessage(title, message, color, url = "WEBHOOK_DISCORD_URL") |
	// Webhook.sendMessage(message, url = "WEBHOOK_DISCORD_URL")
	const std::string title = Lua::getString(L, 1);
	const std::string message = Lua::getString(L, 2);
	const auto color = Lua::getNumber<uint32_t>(L, 3, 0);
	const std::string url = Lua::getString(L, -1);
	if (url == title) {
		g_webhook().sendMessage(title);
	} else if (url == message) {
		g_webhook().sendMessage(title, url);
	} else {
		g_webhook().sendMessage(title, message, color, url);
	}
	lua_pushnil(L);

	return 1;
}
