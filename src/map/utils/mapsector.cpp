/**
 * The Wolf Project - A free and open-source MMORPG server emulator
 * Copyright (©) 2025-2026 The Wolf Project <jakub.polewka92@gmail.com>
 * Repository: https://wolf-project.org
 * License: https://wolf-project.org/license
 * Contributors: https://wolf-project.org/contributors
 * Website: https://wolf-project.org
 */

#include "map/utils/mapsector.hpp"

#include "creatures/creature.hpp"

bool MapSector::newSector = false;

void MapSector::addCreature(const std::shared_ptr<Creature> &c) {
	creature_list.emplace_back(c);
	if (c->getPlayer()) {
		player_list.emplace_back(c);
	} else if (c->getMonster()) {
		monster_list.emplace_back(c);
	} else if (c->getNpc()) {
		npc_list.emplace_back(c);
	}
}

void MapSector::removeCreature(const std::shared_ptr<Creature> &c) {
	auto iter = std::ranges::find(creature_list, c);
	if (iter == creature_list.end()) {
		g_logger().error("[{}]: Creature not found in creature_list!", __FUNCTION__);
		return;
	}

	assert(iter != creature_list.end());
	*iter = creature_list.back();
	creature_list.pop_back();

	if (c->getPlayer()) {
		iter = std::ranges::find(player_list, c);
		if (iter == player_list.end()) {
			g_logger().error("[{}]: Player not found in player_list!", __FUNCTION__);
			return;
		}

		assert(iter != player_list.end());
		*iter = player_list.back();
		player_list.pop_back();
	} else if (c->getMonster()) {
		iter = std::ranges::find(monster_list, c);
		if (iter == monster_list.end()) {
			g_logger().error("[{}]: Monster not found in player_list!", __FUNCTION__);
			return;
		}

		assert(iter != monster_list.end());
		*iter = monster_list.back();
		monster_list.pop_back();
	} else if (c->getNpc()) {
		iter = std::ranges::find(npc_list, c);
		if (iter == npc_list.end()) {
			g_logger().error("[{}]: NPC not found in player_list!", __FUNCTION__);
			return;
		}

		assert(iter != npc_list.end());
		*iter = npc_list.back();
		npc_list.pop_back();
	}
}
