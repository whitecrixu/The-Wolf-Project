/**
 * The Wolf Project - A free and open-source MMORPG server emulator
 * Copyright (©) 2025-2026 The Wolf Project <jakub.polewka92@gmail.com>
 * Repository: https://wolf-project.org
 * License: https://wolf-project.org/license
 * Contributors: https://wolf-project.org/contributors
 * Website: https://wolf-project.org
 */

#pragma once

#ifndef USE_PRECOMPILED_HEADERS
	#include <parallel_hashmap/phmap.h>
	#include <cstdint>
#endif

#include "enums/account_type.hpp"

struct AccountInfo {
	~AccountInfo() = default;

	uint32_t id = 0;
	uint32_t premiumRemainingDays = 0;
	time_t premiumLastDay = 0;
	AccountType accountType = ACCOUNT_TYPE_NONE;
	phmap::flat_hash_map<std::string, uint64_t> players;
	bool oldProtocol = false;
	time_t sessionExpires = 0;
	uint32_t premiumDaysPurchased = 0;
	uint32_t creationTime = 0;
	uint32_t houseBidId = 0;
};
