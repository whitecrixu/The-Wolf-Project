/**
 * The Wolf Project - A free and open-source MMORPG server emulator
 * Copyright (©) 2025-2026 The Wolf Project <jakub.polewka92@gmail.com>
 * Repository: https://wolf-project.org
 * License: https://wolf-project.org/license
 * Contributors: https://wolf-project.org/contributors
 * Website: https://wolf-project.org
 */

#pragma once

// Enums
enum AccessList_t {
	GUEST_LIST = 0x100,
	SUBOWNER_LIST = 0x101,
};

enum AccessHouseLevel_t {
	HOUSE_NOT_INVITED = 0,
	HOUSE_GUEST = 1,
	HOUSE_SUBOWNER = 2,
	HOUSE_OWNER = 3,
};

enum RentPeriod_t {
	RENTPERIOD_DAILY,
	RENTPERIOD_WEEKLY,
	RENTPERIOD_MONTHLY,
	RENTPERIOD_YEARLY,
	RENTPERIOD_NEVER,
};

enum SightLines_t : uint8_t {
	SightLine_NoCheck = 0,
	SightLine_CheckSightLine = 1 << 0,
	SightLine_FloorCheck = 1 << 1,
	SightLine_CheckSightLineAndFloor = SightLine_CheckSightLine | SightLine_FloorCheck,
};
