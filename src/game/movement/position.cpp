/**
 * The Wolf Project - A free and open-source MMORPG server emulator
 * Copyright (©) 2025-2026 The Wolf Project <jakub.polewka92@gmail.com>
 * Repository: https://wolf-project.org
 * License: https://wolf-project.org/license
 * Contributors: https://wolf-project.org/contributors
 * Website: https://wolf-project.org
 */

#include "game/movement/position.hpp"

#include "utils/tools.hpp"

double Position::getEuclideanDistance(const Position &p1, const Position &p2) {
	int32_t dx = Position::getDistanceX(p1, p2);
	int32_t dy = Position::getDistanceY(p1, p2);
	return std::sqrt(dx * dx + dy * dy);
}

Direction Position::getRandomDirection() {
	static std::vector<Direction> dirList {
		DIRECTION_NORTH,
		DIRECTION_WEST,
		DIRECTION_EAST,
		DIRECTION_SOUTH
	};
	std::shuffle(dirList.begin(), dirList.end(), getRandomGenerator());

	return dirList.front();
}

std::ostream &operator<<(std::ostream &os, const Position &pos) {
	return os << pos.toString();
}

std::ostream &operator<<(std::ostream &os, const Direction &dir) {
	static const std::map<Direction, std::string> directionStrings = {
		{ DIRECTION_NORTH, "North" },
		{ DIRECTION_EAST, "East" },
		{ DIRECTION_WEST, "West" },
		{ DIRECTION_SOUTH, "South" },
		{ DIRECTION_SOUTHWEST, "South-West" },
		{ DIRECTION_SOUTHEAST, "South-East" },
		{ DIRECTION_NORTHWEST, "North-West" },
		{ DIRECTION_NORTHEAST, "North-East" }
	};

	auto it = directionStrings.find(dir);
	if (it != directionStrings.end()) {
		return os << it->second;
	}

	return os;
}
