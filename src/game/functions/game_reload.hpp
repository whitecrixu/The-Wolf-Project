/**
 * The Wolf Project - A free and open-source MMORPG server emulator
 * Copyright (©) 2025-2026 The Wolf Project <jakub.polewka92@gmail.com>
 * Repository: https://wolf-project.org
 * License: https://wolf-project.org/license
 * Contributors: https://wolf-project.org/contributors
 * Website: https://wolf-project.org
 */

#pragma once

enum class Reload_t : uint8_t {
	RELOAD_TYPE_NONE,
	RELOAD_TYPE_ALL,
	RELOAD_TYPE_CHAT,
	RELOAD_TYPE_CONFIG,
	RELOAD_TYPE_EVENTS,
	RELOAD_TYPE_MODULES,
	RELOAD_TYPE_OUTFITS,
	RELOAD_TYPE_MOUNTS,
	RELOAD_TYPE_FAMILIARS,
	RELOAD_TYPE_IMBUEMENTS,
	RELOAD_TYPE_VOCATIONS,
	RELOAD_TYPE_CORE,
	RELOAD_TYPE_GROUPS,
	RELOAD_TYPE_SCRIPTS,
	RELOAD_TYPE_ITEMS,
	RELOAD_TYPE_MONSTERS,
	RELOAD_TYPE_NPCS,
	RELOAD_TYPE_RAIDS,

	// Every is last
	RELOAD_TYPE_LAST
};

class GameReload {
public:
	GameReload();
	~GameReload();

	// non-copyable
	GameReload(const GameReload &) = delete;
	GameReload &operator=(const GameReload &) = delete;

	static GameReload &getInstance();

	static bool init(Reload_t reloadType);
	static uint8_t getReloadNumber(Reload_t reloadTypes);

private:
	static bool reloadAll();
	static bool reloadChat();
	static bool reloadConfig();
	static bool reloadEvents();
	static bool reloadModules();
	static bool reloadOutfits();
	static bool reloadMounts();
	static bool reloadFamiliars();
	static bool reloadImbuements();
	static bool reloadVocations();
	static bool reloadCore();
	static bool reloadGroups();
	static bool reloadScripts();
	static bool reloadItems();
	static bool reloadMonsters();
	static bool reloadNpcs();
	static bool reloadRaids();
};

constexpr auto g_gameReload = GameReload::getInstance;
