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

enum class Blessings : uint8_t {
	TwistOfFate = 1,
	TheWisdomOfSolitude = 2,
	TheSparkOfThePhoenix = 3,
	TheFireOfTheSuns = 4,
	TheSpiritualShielding = 5,
	TheEmbraceOfTibia = 6,
	HearthOfTheMountain = 7,
	BloodOfTheMountain = 8
};
