/**
 * The Wolf Project - A free and open-source MMORPG server emulator
 * Copyright (©) 2025-2026 The Wolf Project <jakub.polewka92@gmail.com>
 * Repository: https://wolf-project.org
 * License: https://wolf-project.org/license
 * Contributors: https://wolf-project.org/contributors
 * Website: https://wolf-project.org
 */

#pragma once

class SoftSingleton {
public:
	explicit SoftSingleton(std::string id);

	// non-copyable
	SoftSingleton(const SoftSingleton &) = delete;
	void operator=(const SoftSingleton &) = delete;

	void increment();

	void decrement();

private:
	Logger &logger = g_logger();
	std::string id;
	int instance_count = 0;
};

class SoftSingletonGuard {
public:
	explicit SoftSingletonGuard(SoftSingleton &t);

	// non-copyable
	SoftSingletonGuard(const SoftSingletonGuard &) = delete;
	void operator=(const SoftSingletonGuard &) = delete;

	~SoftSingletonGuard();

private:
	SoftSingleton &tracker;
};
