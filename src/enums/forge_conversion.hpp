/**
 * The Wolf Project - A free and open-source MMORPG server emulator
 * Copyright (©) 2025-2026 The Wolf Project <jakub.polewka92@gmail.com>
 * Repository: https://wolf-project.org
 * License: https://wolf-project.org/license
 * Contributors: https://wolf-project.org/contributors
 * Website: https://wolf-project.org
 */

#pragma once

enum class ForgeAction_t : uint8_t {
	FUSION = 0,
	TRANSFER = 1,
	DUSTTOSLIVERS = 2,
	SLIVERSTOCORES = 3,
	INCREASELIMIT = 4
};
