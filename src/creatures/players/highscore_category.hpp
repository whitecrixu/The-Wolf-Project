/**
 * The Wolf Project - A free and open-source MMORPG server emulator
 * Copyright (©) 2025-2026 The Wolf Project <jakub.polewka92@gmail.com>
 * Repository: https://wolf-project.org
 * License: https://wolf-project.org/license
 * Contributors: https://wolf-project.org/contributors
 * Website: https://wolf-project.org
 */

#pragma once

struct HighscoreCategory {
	HighscoreCategory(std::string name, uint8_t id) :
		m_name(std::move(name)),
		m_id(id) { }

	std::string m_name;
	uint8_t m_id;
};
