/**
 * The Wolf Project - A free and open-source MMORPG server emulator
 * Copyright (©) 2025-2026 The Wolf Project <jakub.polewka92@gmail.com>
 * Repository: https://wolf-project.org
 * License: https://wolf-project.org/license
 * Contributors: https://wolf-project.org/contributors
 * Website: https://wolf-project.org
 */

#include "items/containers/rewards/reward.hpp"

Reward::Reward() :
	Container(ITEM_REWARD_CONTAINER) {
	maxSize = 32;
	unlocked = false;
	pagination = true;
}

ReturnValue Reward::queryAdd(int32_t, const std::shared_ptr<Thing> &thing, uint32_t, uint32_t, const std::shared_ptr<Creature> &actor /* = nullptr*/) {
	if (actor || !thing) {
		return RETURNVALUE_NOTPOSSIBLE;
	}

	const auto &item = thing->getItem();
	if (!item) {
		return RETURNVALUE_NOTPOSSIBLE;
	}

	if (item.get() == this) {
		return RETURNVALUE_THISISIMPOSSIBLE;
	}

	if (!item->isPickupable()) {
		return RETURNVALUE_CANNOTPICKUP;
	}

	return RETURNVALUE_NOERROR;
}

void Reward::postAddNotification(const std::shared_ptr<Thing> &thing, const std::shared_ptr<Cylinder> &oldParent, int32_t index, CylinderLink_t) {
	const std::shared_ptr<Cylinder> &localParent = getParent();
	if (localParent != nullptr) {
		localParent->postAddNotification(thing, oldParent, index, LINK_PARENT);
	}
}

void Reward::postRemoveNotification(const std::shared_ptr<Thing> &thing, const std::shared_ptr<Cylinder> &newParent, int32_t index, CylinderLink_t) {
	const std::shared_ptr<Cylinder> &localParent = getParent();
	if (localParent != nullptr) {
		localParent->postRemoveNotification(thing, newParent, index, LINK_PARENT);
	}
}

std::shared_ptr<Cylinder> Reward::getParent() {
	return m_parent.lock();
}
