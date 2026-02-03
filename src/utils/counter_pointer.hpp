/**
 * The Wolf Project - A free and open-source MMORPG server emulator
 * Copyright (©) 2025-2026 The Wolf Project <jakub.polewka92@gmail.com>
 * Repository: https://wolf-project.org
 * License: https://wolf-project.org/license
 * Contributors: https://wolf-project.org/contributors
 * Website: https://wolf-project.org
 */

#pragma once

class SharedPtrManager {
public:
	SharedPtrManager() = default;
	~SharedPtrManager() = default;

	// Singleton - ensures we don't accidentally copy it.
	SharedPtrManager(const SharedPtrManager &) = delete;
	SharedPtrManager &operator=(const SharedPtrManager &) = delete;

	static SharedPtrManager &getInstance();

	template <typename T>
	void store(const std::string &name, const std::shared_ptr<T> &ptr) {
		m_sharedPtrMap[name] = ptr;
	}

	void countAllReferencesAndClean();

private:
	std::unordered_map<std::string, std::weak_ptr<void>> m_sharedPtrMap;
};

constexpr auto g_counterPointer = SharedPtrManager::getInstance;
