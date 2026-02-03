/**
 * The Wolf Project - A free and open-source MMORPG server emulator
 * Copyright (©) 2025-2026 The Wolf Project <jakub.polewka92@gmail.com>
 * Repository: https://wolf-project.org
 * License: https://wolf-project.org/license
 * Contributors: https://wolf-project.org/contributors
 * Website: https://wolf-project.org
 */

#include "utils/counter_pointer.hpp"

#include "lib/di/container.hpp"
#include "lib/logging/logger.hpp"

SharedPtrManager &SharedPtrManager::getInstance() {
	static SharedPtrManager instance;
	return instance;
}

void SharedPtrManager::countAllReferencesAndClean() {
	for (auto it = m_sharedPtrMap.begin(); it != m_sharedPtrMap.end();) {
		const auto &sptr = it->second.lock();
		if (sptr) {
			g_logger().debug("Counting references of shared_ptr ({}): {}", it->first, sptr.use_count());
			++it;
		} else {
			g_logger().debug("Object {} was destroyed and will be removed from the map.", it->first);
			it = m_sharedPtrMap.erase(it);
		}
	}
}
