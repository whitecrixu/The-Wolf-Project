/**
 * The Wolf Project - A free and open-source MMORPG server emulator
 * Copyright (©) 2025-2026 The Wolf Project <jakub.polewka92@gmail.com>
 * Repository: https://wolf-project.org
 * License: https://wolf-project.org/license
 * Contributors: https://wolf-project.org/contributors
 * Website: https://wolf-project.org
 */

#include "io/ioguild.hpp"

#include "database/database.hpp"
#include "creatures/players/grouping/guild.hpp"

std::shared_ptr<Guild> IOGuild::loadGuild(uint32_t guildId) {
	Database &db = Database::getInstance();
	std::ostringstream query;
	query << "SELECT `name`, `balance` FROM `guilds` WHERE `id` = " << guildId;
	if (DBResult_ptr result = db.storeQuery(query.str())) {
		const auto guild = std::make_shared<Guild>(guildId, result->getString("name"));
		guild->setBankBalance(result->getNumber<uint64_t>("balance"));
		query.str(std::string());
		query << "SELECT `id`, `name`, `level` FROM `guild_ranks` WHERE `guild_id` = " << guildId;

		if ((result = db.storeQuery(query.str()))) {
			do {
				guild->addRank(result->getNumber<uint32_t>("id"), result->getString("name"), result->getNumber<uint16_t>("level"));
			} while (result->next());
		}
		return guild;
	}
	return nullptr;
}

void IOGuild::saveGuild(const std::shared_ptr<Guild> &guild) {
	if (!guild) {
		return;
	}
	Database &db = Database::getInstance();
	std::ostringstream updateQuery;
	updateQuery << "UPDATE `guilds` SET ";
	updateQuery << "`balance` = " << guild->getBankBalance();
	updateQuery << " WHERE `id` = " << guild->getId();
	db.executeQuery(updateQuery.str());
}

uint32_t IOGuild::getGuildIdByName(const std::string &name) {
	Database &db = Database::getInstance();

	std::ostringstream query;
	query << "SELECT `id` FROM `guilds` WHERE `name` = " << db.escapeString(name);

	DBResult_ptr result = db.storeQuery(query.str());
	if (!result) {
		return 0;
	}
	return result->getNumber<uint32_t>("id");
}

void IOGuild::getWarList(uint32_t guildId, GuildWarVector &guildWarVector) {
	std::ostringstream query;
	query << "SELECT `guild1`, `guild2` FROM `guild_wars` WHERE (`guild1` = " << guildId << " OR `guild2` = " << guildId << ") AND `status` = 1";

	DBResult_ptr result = Database::getInstance().storeQuery(query.str());
	if (!result) {
		return;
	}

	do {
		auto guild1 = result->getNumber<uint32_t>("guild1");
		if (guildId != guild1) {
			guildWarVector.push_back(guild1);
		} else {
			guildWarVector.push_back(result->getNumber<uint32_t>("guild2"));
		}
	} while (result->next());
}
