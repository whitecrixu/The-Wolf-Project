/**
 * The Wolf Project - A free and open-source MMORPG server emulator
 * Copyright (©) 2025-2026 The Wolf Project <jakub.polewka92@gmail.com>
 * Repository: https://wolf-project.org
 * License: https://wolf-project.org/license
 * Contributors: https://wolf-project.org/contributors
 * Website: https://wolf-project.org
 */

#pragma once

#include "enums/lua_variant_type.hpp"
#include "game/movement/position.hpp"

#ifndef USE_PRECOMPILED_HEADERS
	#include <cstdint>
	#include <string>
#endif

struct LuaVariant {
	LuaVariantType_t type = VARIANT_NONE;
	std::string text;
	std::string instantName;
	std::string runeName;
	Position pos;
	uint32_t number = 0;
};
