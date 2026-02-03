/**
 * The Wolf Project - A free and open-source MMORPG server emulator
 * Copyright (©) 2025-2026 The Wolf Project <jakub.polewka92@gmail.com>
 * Repository: https://wolf-project.org
 * License: https://wolf-project.org/license
 * Contributors: https://wolf-project.org/contributors
 * Website: https://wolf-project.org
 */

#pragma once

#include "io/iologindata.hpp"

class PropWriteStream;
class DBInsert;

class IOLoginDataSave : public IOLoginData {
public:
	static bool savePlayerFirst(const std::shared_ptr<Player> &player);
	static bool savePlayerStash(const std::shared_ptr<Player> &player);
	static bool savePlayerSpells(const std::shared_ptr<Player> &player);
	static bool savePlayerKills(const std::shared_ptr<Player> &player);
	static bool savePlayerBestiarySystem(const std::shared_ptr<Player> &player);
	static bool savePlayerItem(const std::shared_ptr<Player> &player);
	static bool savePlayerDepotItems(const std::shared_ptr<Player> &player);
	static bool saveRewardItems(const std::shared_ptr<Player> &player);
	static bool savePlayerInbox(const std::shared_ptr<Player> &player);
	static bool savePlayerPreyClass(const std::shared_ptr<Player> &player);
	static bool savePlayerTaskHuntingClass(const std::shared_ptr<Player> &player);
	static bool savePlayerForgeHistory(const std::shared_ptr<Player> &player);
	static bool savePlayerBosstiary(const std::shared_ptr<Player> &player);
	static bool savePlayerStorage(const std::shared_ptr<Player> &player);

protected:
	using ItemBlockList = std::list<std::pair<int32_t, std::shared_ptr<Item>>>;
	using ItemDepotList = std::list<std::pair<int32_t, std::shared_ptr<Item>>>;
	using ItemRewardList = std::list<std::pair<int32_t, std::shared_ptr<Item>>>;
	using ItemInboxList = std::list<std::pair<int32_t, std::shared_ptr<Item>>>;

	static bool saveItems(const std::shared_ptr<Player> &player, const ItemBlockList &itemList, DBInsert &query_insert, PropWriteStream &stream);
};
