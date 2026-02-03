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

class DatabaseManager {
public:
	static bool tableExists(const std::string &table);

	static int32_t getDatabaseVersion();
	static bool isDatabaseSetup();

	static bool optimizeTables();
	static void updateDatabase();

	static bool getDatabaseConfig(const std::string &config, int32_t &value);
	static void registerDatabaseConfig(const std::string &config, int32_t value);
};
