/**
 * The Wolf Project - A free and open-source MMORPG server emulator
 * Copyright (©) 2025-2026 The Wolf Project <jakub.polewka92@gmail.com>
 * Repository: https://wolf-project.org
 * License: https://wolf-project.org/license
 * Contributors: https://wolf-project.org/contributors
 * Website: https://wolf-project.org
 */

#pragma once

struct TierInfo {
	uint8_t corePrice = 0;
	uint64_t regularPrice = 0;
	uint64_t convergenceFusionPrice = 0;
	uint64_t convergenceTransferPrice = 0;
};

// Classification class for forging system and market.
class ItemClassification final {
public:
	ItemClassification() = default;
	explicit ItemClassification(uint8_t id) :
		id(id) { }
	virtual ~ItemClassification() = default;

	void addTier(uint8_t tierId, uint8_t corePrice, uint64_t regularPrice, uint64_t convergenceFusionPrice, uint64_t convergenceTransferPrice) {
		auto &table = tiers[tierId];
		table.corePrice = corePrice;
		table.regularPrice = regularPrice;
		table.convergenceFusionPrice = convergenceFusionPrice;
		table.convergenceTransferPrice = convergenceTransferPrice;
	}

	uint8_t id {};
	std::map<uint8_t, TierInfo> tiers {};
};
