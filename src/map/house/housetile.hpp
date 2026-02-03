/**
 * The Wolf Project - A free and open-source MMORPG server emulator
 * Copyright (©) 2025-2026 The Wolf Project <jakub.polewka92@gmail.com>
 * Repository: https://wolf-project.org
 * License: https://wolf-project.org/license
 * Contributors: https://wolf-project.org/contributors
 * Website: https://wolf-project.org
 */

#pragma once

#include "items/tile.hpp"

class House;

class HouseTile final : public DynamicTile {
public:
	using Tile::addThing;

	HouseTile(const Position &position, std::shared_ptr<House> house);
	HouseTile(int32_t x, int32_t y, int32_t z, std::shared_ptr<House> house);

	// cylinder implementations
	ReturnValue queryAdd(int32_t index, const std::shared_ptr<Thing> &thing, uint32_t count, uint32_t flags, const std::shared_ptr<Creature> &actor = nullptr) override;

	std::shared_ptr<Cylinder> queryDestination(int32_t &index, const std::shared_ptr<Thing> &thing, std::shared_ptr<Item> &destItem, uint32_t &flags) override;

	ReturnValue queryRemove(const std::shared_ptr<Thing> &thing, uint32_t count, uint32_t flags, const std::shared_ptr<Creature> &actor = nullptr) override;

	void addThing(int32_t index, const std::shared_ptr<Thing> &thing) override;
	void internalAddThing(uint32_t index, const std::shared_ptr<Thing> &thing) override;

	std::shared_ptr<House> getHouse() override {
		return house;
	}

private:
	void updateHouse(const std::shared_ptr<Item> &item) const;

	std::shared_ptr<House> house;
};
