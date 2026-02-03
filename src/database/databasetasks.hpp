/**
 * The Wolf Project - A free and open-source MMORPG server emulator
 * Copyright (©) 2025-2026 The Wolf Project <jakub.polewka92@gmail.com>
 * Repository: https://wolf-project.org
 * License: https://wolf-project.org/license
 * Contributors: https://wolf-project.org/contributors
 * Website: https://wolf-project.org
 */

#pragma once

#include "database/database.hpp"
#include "lib/thread/thread_pool.hpp"

class DatabaseTasks {
public:
	DatabaseTasks(ThreadPool &threadPool, Database &db);

	// Ensures that we don't accidentally copy it
	DatabaseTasks(const DatabaseTasks &) = delete;
	DatabaseTasks &operator=(const DatabaseTasks &) = delete;

	static DatabaseTasks &getInstance();

	void execute(const std::string &query, const std::function<void(DBResult_ptr, bool)> &callback = nullptr);
	void store(const std::string &query, const std::function<void(DBResult_ptr, bool)> &callback = nullptr);

private:
	Database &db;
	ThreadPool &threadPool;
};

constexpr auto g_databaseTasks = DatabaseTasks::getInstance;
