/**
 * The Wolf Project - A free and open-source MMORPG server emulator
 * Copyright (©) 2025-2026 The Wolf Project <jakub.polewka92@gmail.com>
 * Repository: https://wolf-project.org
 * License: https://wolf-project.org/license
 * Contributors: https://wolf-project.org/contributors
 * Website: https://wolf-project.org
 */

#pragma once

class EventsSchedulerFunctions {
public:
	static void init(lua_State* L);

private:
	static int luaEventsSchedulergetEventSLoot(lua_State* L);
	static int luaEventsSchedulergetEventSBossLoot(lua_State* L);
	static int luaEventsSchedulergetEventSSkill(lua_State* L);
	static int luaEventsSchedulergetEventSExp(lua_State* L);
	static int luaEventsSchedulergetSpawnMonsterSchedule(lua_State* L);
};
