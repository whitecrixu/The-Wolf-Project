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
	#include <cstdint>
#endif

enum GroupType : uint8_t {
	GROUP_TYPE_NONE = 0,
	GROUP_TYPE_NORMAL = 1,
	GROUP_TYPE_TUTOR = 2,
	GROUP_TYPE_SENIORTUTOR = 3,
	GROUP_TYPE_GAMEMASTER = 4,
	GROUP_TYPE_COMMUNITYMANAGER = 5,
	GROUP_TYPE_GOD = 6
};
