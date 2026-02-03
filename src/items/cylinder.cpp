/**
 * The Wolf Project - A free and open-source MMORPG server emulator
 * Copyright (©) 2025-2026 The Wolf Project <jakub.polewka92@gmail.com>
 * Repository: https://wolf-project.org
 * License: https://wolf-project.org/license
 * Contributors: https://wolf-project.org/contributors
 * Website: https://wolf-project.org
 */

#include "items/cylinder.hpp"

std::shared_ptr<VirtualCylinder> VirtualCylinder::virtualCylinder = std::make_shared<VirtualCylinder>();

int32_t Cylinder::getThingIndex(const std::shared_ptr<Thing> &) const {
	return -1;
}

size_t Cylinder::getFirstIndex() const {
	return 0;
}

size_t Cylinder::getLastIndex() const {
	return 0;
}

uint32_t Cylinder::getItemTypeCount(uint16_t, int32_t) const {
	return 0;
}

std::map<uint32_t, uint32_t> &Cylinder::getAllItemTypeCount(std::map<uint32_t, uint32_t> &countMap) const {
	return countMap;
}

std::shared_ptr<Thing> Cylinder::getThing(size_t) const {
	return nullptr;
}

void Cylinder::internalAddThing(const std::shared_ptr<Thing> &) {
	//
}

void Cylinder::internalAddThing(uint32_t, const std::shared_ptr<Thing> &) {
	//
}

void Cylinder::startDecaying() {
	//
}
