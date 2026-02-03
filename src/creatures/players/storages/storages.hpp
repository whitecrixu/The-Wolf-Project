/**
 * The Wolf Project - A free and open-source MMORPG server emulator
 * Copyright (©) 2025-2026 The Wolf Project <jakub.polewka92@gmail.com>
 * Repository: https://wolf-project.org
 * License: https://wolf-project.org/license
 * Contributors: https://wolf-project.org/contributors
 * Website: https://wolf-project.org
 */

#pragma once

class Storages {
public:
	Storages() = default;

	// Singleton - ensures we don't accidentally copy it
	Storages(const Storages &) = delete;
	void operator=(const Storages &) = delete;

	static Storages &getInstance();

	bool loadFromXML();

	const std::map<std::string, uint32_t> &getStorageMap() const;

private:
	std::map<std::string, uint32_t> m_storageMap;
};

constexpr auto g_storages = Storages::getInstance;
