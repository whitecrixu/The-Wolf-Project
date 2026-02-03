/**
 * The Wolf Project - A free and open-source MMORPG server emulator
 * Copyright (©) 2025-2026 The Wolf Project <jakub.polewka92@gmail.com>
 * Repository: https://wolf-project.org
 * License: https://wolf-project.org/license
 * Contributors: https://wolf-project.org/contributors
 * Website: https://wolf-project.org
 */

#include "lua/functions/core/libs/metrics_functions.hpp"

#include "lib/metrics/metrics.hpp"
#include "lua/functions/lua_functions_loader.hpp"

void MetricsFunctions::init(lua_State* L) {
	Lua::registerTable(L, "metrics");
	Lua::registerMethod(L, "metrics", "addCounter", MetricsFunctions::luaMetricsAddCounter);
}

// Metrics
int MetricsFunctions::luaMetricsAddCounter(lua_State* L) {
	// metrics.addCounter(name, value, attributes)
	const auto name = Lua::getString(L, 1);
	const auto value = Lua::getNumber<double>(L, 2);
	const auto attributes = getAttributes(L, 3);
	g_metrics().addCounter(name, value, attributes);
	return 1;
}

std::map<std::string, std::string> MetricsFunctions::getAttributes(lua_State* L, int32_t index) {
	std::map<std::string, std::string> attributes;
	if (Lua::isTable(L, index)) {
		lua_pushnil(L);
		while (lua_next(L, index) != 0) {
			attributes[Lua::getString(L, -2)] = Lua::getString(L, -1);
			lua_pop(L, 1);
		}
	}
	return attributes;
}
