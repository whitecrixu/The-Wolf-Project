/**
 * The Wolf Project - A free and open-source MMORPG server emulator
 * Copyright (©) 2025-2026 The Wolf Project <jakub.polewka92@gmail.com>
 * Repository: https://wolf-project.org
 * License: https://wolf-project.org/license
 * Contributors: https://wolf-project.org/contributors
 * Website: https://wolf-project.org
 */

#pragma once

class ValueWrapper;

#ifndef USE_PRECOMPILED_HEADERS
	#include <string>
	#include <vector>
	#include <memory>
	#include <variant>
	#include <parallel_hashmap/phmap.h>
#endif

using StringType = std::string;
using BooleanType = bool;
using IntType = int;
using DoubleType = double;
using ArrayType = std::vector<ValueWrapper>;
using MapType = phmap::flat_hash_map<std::string, std::shared_ptr<ValueWrapper>>;

using ValueVariant = std::variant<StringType, BooleanType, IntType, DoubleType, ArrayType, MapType>;
