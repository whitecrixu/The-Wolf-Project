/**
 * The Wolf Project - A free and open-source MMORPG server emulator
 * Copyright (©) 2025-2026 The Wolf Project <jakub.polewka92@gmail.com>
 * Repository: https://wolf-project.org
 * License: https://wolf-project.org/license
 * Contributors: https://wolf-project.org/contributors
 * Website: https://wolf-project.org
 */
#include "lib/di/soft_singleton.hpp"

#include "utils/tools.hpp"

SoftSingleton::SoftSingleton(std::string id) :
	id(std::move(id)) { }

void SoftSingleton::increment() {
	instance_count++;
	if (instance_count > 1) {
		logger.warn(
			"{} instances created for {}. This is a soft singleton, you probably want to use g_{} instead.",
			instance_count,
			id,
			asLowerCaseString(id)
		);
	}
}

void SoftSingleton::decrement() {
	instance_count--;
}

SoftSingletonGuard::SoftSingletonGuard(SoftSingleton &t) :
	tracker(t) {
	tracker.increment();
}

SoftSingletonGuard::~SoftSingletonGuard() {
	tracker.decrement();
}
