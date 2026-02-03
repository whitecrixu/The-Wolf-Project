/**
 * The Wolf Project - A free and open-source MMORPG server emulator
 * Copyright (©) 2025-2026 The Wolf Project <jakub.polewka92@gmail.com>
 * Repository: https://wolf-project.org
 * License: https://wolf-project.org/license
 * Contributors: https://wolf-project.org/contributors
 * Website: https://wolf-project.org
 */

#pragma once

#include "lua/scripts/luascript.hpp"
#include "lua/functions/events/action_functions.hpp"
#include "lua/functions/events/creature_event_functions.hpp"
#include "lua/functions/events/events_scheduler_functions.hpp"
#include "lua/functions/events/global_event_functions.hpp"
#include "lua/functions/events/move_event_functions.hpp"
#include "lua/functions/events/talk_action_functions.hpp"
#include "lua/functions/events/event_callback_functions.hpp"

class EventFunctions final : LuaScriptInterface {
public:
	explicit EventFunctions(lua_State* L) :
		LuaScriptInterface("EventFunctions") {
		init(L);
	}
	~EventFunctions() override = default;

	static void init(lua_State* L) {
		ActionFunctions::init(L);
		CreatureEventFunctions::init(L);
		EventsSchedulerFunctions::init(L);
		GlobalEventFunctions::init(L);
		MoveEventFunctions::init(L);
		TalkActionFunctions::init(L);
		EventCallbackFunctions::init(L);
		/* Move, Creature, Talk, Global events goes all here */
	}
};
