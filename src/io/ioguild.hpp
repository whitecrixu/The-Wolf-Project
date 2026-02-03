/**
 * The Wolf Project - A free and open-source MMORPG server emulator
 * Copyright (©) 2025-2026 The Wolf Project <jakub.polewka92@gmail.com>
 * Repository: https://wolf-project.org
 * License: https://wolf-project.org/license
 * Contributors: https://wolf-project.org/contributors
 * Website: https://wolf-project.org
 */

#pragma once

class Guild;
using GuildWarVector = std::vector<uint32_t>;

class IOGuild {
public:
	static std::shared_ptr<Guild> loadGuild(uint32_t guildId);
	static void saveGuild(const std::shared_ptr<Guild> &guild);
	static uint32_t getGuildIdByName(const std::string &name);
	static void getWarList(uint32_t guildId, GuildWarVector &guildWarVector);
};
