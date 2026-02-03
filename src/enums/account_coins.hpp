/**
 * The Wolf Project - A free and open-source MMORPG server emulator
 * Copyright (©) 2025-2026 The Wolf Project <jakub.polewka92@gmail.com>
 * Repository: https://wolf-project.org
 * License: https://wolf-project.org/license
 * Contributors: https://wolf-project.org/contributors
 * Website: https://wolf-project.org
 */

#pragma once

enum class CoinTransactionType : uint8_t {
	Add = 1,
	Remove = 2
};

enum class CoinType : uint8_t {
	Normal = 1,
	Tournament = 2,
	Transferable = 3
};
