/**
 * The Wolf Project - A free and open-source MMORPG server emulator
 * Copyright (©) 2025-2026 The Wolf Project <jakub.polewka92@gmail.com>
 * Repository: https://wolf-project.org
 * License: https://wolf-project.org/license
 * Contributors: https://wolf-project.org/contributors
 * Website: https://wolf-project.org
 */

#include "items/thing.hpp"

#include "items/tile.hpp"

const Position &Thing::getPosition() {
	const auto &tile = getTile();
	if (!tile) {
		return Tile::nullptr_tile->getPosition();
	}
	return tile->getPosition();
}
