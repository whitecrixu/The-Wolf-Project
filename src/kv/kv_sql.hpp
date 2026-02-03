/**
 * The Wolf Project - A free and open-source MMORPG server emulator
 * Copyright (©) 2025-2026 The Wolf Project <jakub.polewka92@gmail.com>
 * Repository: https://wolf-project.org
 * License: https://wolf-project.org/license
 * Contributors: https://wolf-project.org/contributors
 * Website: https://wolf-project.org
 */

#pragma once

#include "kv/kv.hpp"

class Database;
class Logger;
class DBInsert;
class ValueWrapper;

class KVSQL final : public KVStore {
public:
	explicit KVSQL(Database &db, Logger &logger);

	bool saveAll() override;

private:
	std::vector<std::string> loadPrefix(const std::string &prefix = "") override;
	std::optional<ValueWrapper> load(const std::string &key) override;
	bool save(const std::string &key, const ValueWrapper &value) override;
	bool prepareSave(const std::string &key, const ValueWrapper &value, DBInsert &update) const;

	DBInsert dbUpdate();

	Database &db;
};
