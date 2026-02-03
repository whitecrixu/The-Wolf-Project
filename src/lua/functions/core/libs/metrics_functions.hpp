/**
 * The Wolf Project - A free and open-source MMORPG server emulator
 * Copyright (©) 2025-2026 The Wolf Project <jakub.polewka92@gmail.com>
 * Repository: https://wolf-project.org
 * License: https://wolf-project.org/license
 * Contributors: https://wolf-project.org/contributors
 * Website: https://wolf-project.org
 */

#pragma once

class MetricsFunctions {
public:
	static void init(lua_State* L);

private:
	static int luaMetricsAddCounter(lua_State* L);
	static std::map<std::string, std::string> getAttributes(lua_State* L, int32_t index);
};
