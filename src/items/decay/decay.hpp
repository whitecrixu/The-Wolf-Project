/**
 * The Wolf Project - A free and open-source MMORPG server emulator
 * Copyright (©) 2025-2026 The Wolf Project <jakub.polewka92@gmail.com>
 * Repository: https://wolf-project.org
 * License: https://wolf-project.org/license
 * Contributors: https://wolf-project.org/contributors
 * Website: https://wolf-project.org
 */

#pragma once

class Item;

class Decay {
public:
	Decay() = default;

	Decay(const Decay &) = delete;
	void operator=(const Decay &) = delete;

	static Decay &getInstance();

	void startDecay(const std::shared_ptr<Item> &item);
	void stopDecay(const std::shared_ptr<Item> &item);

private:
	void checkDecay();
	static void internalDecayItem(const std::shared_ptr<Item> &item);

	uint32_t eventId { 0 };
	// order is important, so we use an std::map
	std::map<int64_t, std::vector<std::shared_ptr<Item>>> decayMap;
};

constexpr auto g_decay = Decay::getInstance;
