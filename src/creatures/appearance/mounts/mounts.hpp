/**
 * The Wolf Project - A free and open-source MMORPG server emulator
 * Copyright (©) 2025-2026 The Wolf Project <jakub.polewka92@gmail.com>
 * Repository: https://wolf-project.org
 * License: https://wolf-project.org/license
 * Contributors: https://wolf-project.org/contributors
 * Website: https://wolf-project.org
 */

#pragma once

struct Mount {
	Mount(uint8_t initId, uint16_t initClientId, std::string initName, int32_t initSpeed, bool initPremium, std::string initType) :
		name(std::move(initName)), speed(initSpeed), clientId(initClientId), id(initId), premium(initPremium),
		type(std::move(initType)) { }

	std::string name;
	int32_t speed;
	uint16_t clientId;
	uint8_t id;
	bool premium;
	std::string type;
};

class Mounts {
public:
	bool reload();
	bool loadFromXml();
	std::shared_ptr<Mount> getMountByID(uint8_t id);
	std::shared_ptr<Mount> getMountByName(const std::string &name);
	std::shared_ptr<Mount> getMountByClientID(uint16_t clientId);

	[[nodiscard]] const phmap::parallel_flat_hash_set<std::shared_ptr<Mount>> &getMounts() const {
		return mounts;
	}

private:
	phmap::parallel_flat_hash_set<std::shared_ptr<Mount>> mounts;
};
