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
class PropStream;
class PropWriteStream;

class AnimusMastery {
public:
	explicit AnimusMastery(Player &player);

	void add(const std::string &addMonsterType);
	void remove(const std::string &removeMonsterType);

	bool has(const std::string &searchMonsterType) const;

	float getExperienceMultiplier() const;

	uint16_t getPoints() const;

	const std::vector<std::string> &getAnimusMasteries() const;

	void serialize(PropWriteStream &propWriteStream) const;
	bool unserialize(PropStream &propStream);

private:
	Player &m_player;

	float maxMonsterXpMultiplier = 4.0;
	float monsterXpMultiplier = 2.0;
	float monstersXpMultiplier = 0.1;
	uint16_t monstersAmountToMultiply = 10;

	std::vector<std::string> animusMasteries;
};
