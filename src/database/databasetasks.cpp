/**
 * The Wolf Project - A free and open-source MMORPG server emulator
 * Copyright (©) 2025-2026 The Wolf Project <jakub.polewka92@gmail.com>
 * Repository: https://wolf-project.org
 * License: https://wolf-project.org/license
 * Contributors: https://wolf-project.org/contributors
 * Website: https://wolf-project.org
 */

#include "database/databasetasks.hpp"

#include "game/scheduling/dispatcher.hpp"
#include "lib/thread/thread_pool.hpp"
#include "lib/di/container.hpp"

DatabaseTasks::DatabaseTasks(ThreadPool &threadPool, Database &db) :
	db(db), threadPool(threadPool) {
}

DatabaseTasks &DatabaseTasks::getInstance() {
	return inject<DatabaseTasks>();
}

void DatabaseTasks::execute(const std::string &query, const std::function<void(DBResult_ptr, bool)> &callback /* nullptr */) {
	threadPool.detach_task([this, query, callback]() {
		bool success = db.executeQuery(query);
		if (callback != nullptr) {
			g_dispatcher().addEvent([callback, success]() { callback(nullptr, success); }, __FUNCTION__);
		}
	});
}

void DatabaseTasks::store(const std::string &query, const std::function<void(DBResult_ptr, bool)> &callback /* nullptr */) {
	threadPool.detach_task([this, query, callback]() {
		DBResult_ptr result = db.storeQuery(query);
		if (callback != nullptr) {
			g_dispatcher().addEvent([callback, result]() { callback(result, true); }, __FUNCTION__);
		}
	});
}
