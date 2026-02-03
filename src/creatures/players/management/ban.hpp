/**
 * The Wolf Project - A free and open-source MMORPG server emulator
 * Copyright (©) 2025-2026 The Wolf Project <jakub.polewka92@gmail.com>
 * Repository: https://wolf-project.org
 * License: https://wolf-project.org/license
 * Contributors: https://wolf-project.org/contributors
 * Website: https://wolf-project.org
 */

#pragma once

struct BanInfo {
	std::string bannedBy {};
	std::string reason {};
	time_t expiresAt {};
};

struct ConnectBlock {
	constexpr ConnectBlock(uint64_t lastAttempt, uint64_t blockTime, uint32_t count) :
		lastAttempt(lastAttempt), blockTime(blockTime), count(count) { }

	uint64_t lastAttempt {};
	uint64_t blockTime {};
	uint32_t count {};
};

using IpConnectMap = std::map<uint32_t, ConnectBlock>;

class Ban {
public:
	bool acceptConnection(uint32_t clientIP);

private:
	IpConnectMap ipConnectMap;
	std::recursive_mutex lock;
};

class IOBan {
public:
	static bool isAccountBanned(uint32_t accountId, BanInfo &banInfo);
	static bool isIpBanned(uint32_t clientIP, BanInfo &banInfo);
	static bool isPlayerNamelocked(uint32_t playerId);
};
