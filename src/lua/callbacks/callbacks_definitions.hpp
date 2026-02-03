/**
 * The Wolf Project - A free and open-source MMORPG server emulator
 * Copyright (©) 2025-2026 The Wolf Project <jakub.polewka92@gmail.com>
 * Repository: https://wolf-project.org
 * License: https://wolf-project.org/license
 * Contributors: https://wolf-project.org/contributors
 * Website: https://wolf-project.org
 */

#pragma once

/**
 * @enum EventCallback_t
 * @brief Defines the types of events that can trigger callbacks.
 *
 * @details This enumeration represents different types of game events that can be associated
 * with specific callbacks.
 * @note The events are categorized by the type of game entity they relate to.
 */
enum class EventCallback_t : uint16_t {
	none,
	// Creature
	creatureOnChangeOutfit,
	creatureOnAreaCombat,
	creatureOnTargetCombat,
	creatureOnDrainHealth,
	creatureOnCombat,
	// Party
	partyOnJoin,
	partyOnLeave,
	partyOnDisband,
	partyOnShareExperience,
	// Player
	playerOnBrowseField,
	playerOnLook,
	playerOnLookInBattleList,
	playerOnLookInTrade,
	playerOnLookInShop,
	playerOnMoveItem,
	playerOnItemMoved,
	playerOnChangeZone,
	playerOnChangeHazard,
	playerOnMoveCreature,
	playerOnReportRuleViolation,
	playerOnReportBug,
	playerOnTurn,
	playerOnTradeRequest,
	playerOnTradeAccept,
	playerOnGainExperience,
	playerOnLoseExperience,
	playerOnGainSkillTries,
	playerOnRequestQuestLog,
	playerOnRequestQuestLine,
	playerOnStorageUpdate,
	playerOnRemoveCount,
	playerOnCombat,
	playerOnInventoryUpdate,
	playerOnRotateItem,
	playerOnWalk,
	playerOnThink,
	// Monster
	monsterOnDropLoot,
	monsterPostDropLoot,
	// Zone
	zoneBeforeCreatureEnter,
	zoneBeforeCreatureLeave,
	zoneAfterCreatureEnter,
	zoneAfterCreatureLeave,
	mapOnLoad,
};
