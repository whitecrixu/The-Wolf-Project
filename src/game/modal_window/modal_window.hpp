/**
 * The Wolf Project - A free and open-source MMORPG server emulator
 * Copyright (©) 2025-2026 The Wolf Project <jakub.polewka92@gmail.com>
 * Repository: https://wolf-project.org
 * License: https://wolf-project.org/license
 * Contributors: https://wolf-project.org/contributors
 * Website: https://wolf-project.org
 */

#pragma once

#ifndef USE_PRECOMPILED_HEADERS
	#include <list>
	#include <string>
	#include <utility>
	#include <cstdint>
#endif

struct ModalWindow {
	std::list<std::pair<std::string, uint8_t>> buttons, choices;
	std::string title, message;
	uint32_t id;
	uint8_t defaultEnterButton, defaultEscapeButton;
	bool priority;

	ModalWindow(uint32_t newId, std::string newTitle, std::string newMessage) :
		title(std::move(newTitle)),
		message(std::move(newMessage)),
		id(newId),
		defaultEnterButton(0xFF),
		defaultEscapeButton(0xFF),
		priority(false) { }
};
