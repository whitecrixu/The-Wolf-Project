/**
 * The Wolf Project - A free and open-source MMORPG server emulator
 * Copyright (©) 2025-2026 The Wolf Project <jakub.polewka92@gmail.com>
 * Repository: https://wolf-project.org
 * License: https://wolf-project.org/license
 * Contributors: https://wolf-project.org/contributors
 * Website: https://wolf-project.org
 */
#pragma once

enum class CommandType {
	start,
	load,
	run,
	shutdown,
};

using ICommand = Message<CommandType>;
using CommandHandler = MessageHandler<CommandType>;
using CommandPolicy = MessagePolicy<CommandType>;
using CommandListener = IMessageListener<CommandType>;
using CommandListeners = MessageListeners<CommandType>;
using CommandDispatcher = MessageDispatcher<CommandType>;
using CommandRemover = MessageRemover<CommandType>;

inline ICommand command(CommandType type) {
	return ICommand { type };
}
#define commandCallback(block) [this](const ICommand &) block
#define appendCommandListener(type, block) dispatcher.appendListener(type, commandCallback(block))
