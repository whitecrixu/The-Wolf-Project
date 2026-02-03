/**
 * The Wolf Project - A free and open-source MMORPG server emulator
 * Copyright (©) 2025-2026 The Wolf Project <jakub.polewka92@gmail.com>
 * Repository: https://wolf-project.org
 * License: https://wolf-project.org/license
 * Contributors: https://wolf-project.org/contributors
 * Website: https://wolf-project.org
 */

#pragma once

#include "game/movement/position.hpp"

class Tile;
class Cylinder;
class Item;
class Creature;
class Container;
class Player;

class Thing {
public:
	constexpr Thing() = default;
	virtual ~Thing() = default;

	// non-copyable
	Thing(const Thing &) = delete;
	Thing &operator=(const Thing &) = delete;

	virtual std::string getDescription(int32_t lookDistance) = 0;

	virtual std::shared_ptr<Cylinder> getParent() {
		return nullptr;
	}
	virtual std::shared_ptr<Cylinder> getRealParent() {
		return getParent();
	}

	virtual void setParent(std::weak_ptr<Cylinder>) {
		//
	}

	virtual std::shared_ptr<Tile> getTile() {
		return nullptr;
	}

	virtual std::shared_ptr<Tile> getTile() const {
		return nullptr;
	}

	virtual const Position &getPosition();
	virtual int32_t getThrowRange() const = 0;
	virtual bool isPushable() = 0;

	virtual std::shared_ptr<Player> getPlayer() {
		return nullptr;
	}
	virtual std::shared_ptr<Container> getContainer() {
		return nullptr;
	}
	virtual std::shared_ptr<const Container> getContainer() const {
		return nullptr;
	}
	virtual std::shared_ptr<Item> getItem() {
		return nullptr;
	}
	virtual std::shared_ptr<const Item> getItem() const {
		return nullptr;
	}
	virtual std::shared_ptr<Creature> getCreature() {
		return nullptr;
	}
	virtual std::shared_ptr<const Creature> getCreature() const {
		return nullptr;
	}
	virtual std::shared_ptr<Cylinder> getCylinder() {
		return nullptr;
	}

	virtual bool isRemoved() {
		return true;
	}
};
