/**
 * The Wolf Project - A free and open-source MMORPG server emulator
 * Copyright (©) 2025-2026 The Wolf Project <jakub.polewka92@gmail.com>
 * Repository: https://wolf-project.org
 * License: https://wolf-project.org/license
 * Contributors: https://wolf-project.org/contributors
 * Website: https://wolf-project.org
 */

#include "lib/thread/thread_pool.hpp"

#include <iostream>
#include "game/game.hpp"
#include "utils/tools.hpp"
#include "lib/di/container.hpp"

#include <csignal>

/**
 * Regardless of how many cores your computer have, we want at least
 * 4 threads because, even though they won't improve processing they
 * will make processing non-blocking in some way and that would allow
 * single core computers to process things concurrently, but not in parallel.
 */

#ifndef DEFAULT_NUMBER_OF_THREADS
	#define DEFAULT_NUMBER_OF_THREADS 4
#endif

ThreadPool &ThreadPool::getInstance() {
	return inject<ThreadPool>();
}

ThreadPool::ThreadPool(Logger &logger, uint32_t threadCount) :
	logger(logger),
	pool { std::make_unique<BS::thread_pool<BS::tp::none>>(
		threadCount > 0 ? threadCount : std::max<int>(getNumberOfCores(), DEFAULT_NUMBER_OF_THREADS)
	) } {
	start();
}

void ThreadPool::start() const {
	std::cout << "  - Running with " << get_thread_count() << " threads." << std::endl;
}

void ThreadPool::shutdown() {
	if (stopped) {
		return;
	}

	stopped = true;

	std::cout << "  - Shutting down thread pool..." << std::endl;
	pool.reset();

	std::signal(SIGINT, SIG_DFL);
	std::signal(SIGTERM, SIG_DFL);

	std::cout << "  - Thread pool shutdown complete." << std::endl;
}
