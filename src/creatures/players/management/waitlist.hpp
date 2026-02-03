/**
 * The Wolf Project - A free and open-source MMORPG server emulator
 * Copyright (©) 2025-2026 The Wolf Project <jakub.polewka92@gmail.com>
 * Repository: https://wolf-project.org
 * License: https://wolf-project.org/license
 * Contributors: https://wolf-project.org/contributors
 * Website: https://wolf-project.org
 */

#pragma once

class Player;

struct WaitListInfo;

struct Wait {
	constexpr Wait(std::size_t initTimeout, uint32_t initPlayerGUID) :
		timeout(initTimeout), playerGUID(initPlayerGUID) { }

	std::size_t timeout;
	uint32_t playerGUID;
};

using WaitList = std::list<Wait>;

struct WaitListInfo {
	WaitList priorityWaitList;
	WaitList waitList;

	phmap::flat_hash_map<uint32_t, std::pair<WaitList::iterator, std::size_t>> playerReferences;
};

class WaitingList {
public:
	WaitingList();
	static WaitingList &getInstance();
	bool clientLogin(const std::shared_ptr<Player> &player) const;
	std::size_t getClientSlot(const std::shared_ptr<Player> &player) const;
	static std::size_t getTime(std::size_t slot);

private:
	void cleanupList(WaitList &list) const;
	std::size_t getTimeout(std::size_t slot) const;
	void addPlayerToList(const std::shared_ptr<Player> &player) const;
	std::unique_ptr<WaitListInfo> info;
};
