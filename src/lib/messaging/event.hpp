/**
 * The Wolf Project - A free and open-source MMORPG server emulator
 * Copyright (©) 2025-2026 The Wolf Project <jakub.polewka92@gmail.com>
 * Repository: https://wolf-project.org
 * License: https://wolf-project.org/license
 * Contributors: https://wolf-project.org/contributors
 * Website: https://wolf-project.org
 */
#pragma once

enum class EventType {
};

using IEvent = Message<EventType>;
using EventHandler = MessageHandler<EventType>;
using EventPolicy = MessagePolicy<EventType>;
using EventListener = IMessageListener<EventType>;
using EventListeners = MessageListeners<EventType>;
using EventDispatcher = MessageDispatcher<EventType>;
using EventRemover = MessageRemover<EventType>;

inline IEvent event(EventType type) {
	return IEvent { type };
}
#define eventCallback(block) [this](const IEvent &) block
#define appendEventListener(type, block) dispatcher.appendListener(type, eventCallback(block))
