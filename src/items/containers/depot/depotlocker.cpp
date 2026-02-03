/**
 * The Wolf Project - A free and open-source MMORPG server emulator
 * Copyright (©) 2025-2026 The Wolf Project <jakub.polewka92@gmail.com>
 * Repository: https://wolf-project.org
 * License: https://wolf-project.org/license
 * Contributors: https://wolf-project.org/contributors
 * Website: https://wolf-project.org
 */

#include "items/containers/depot/depotlocker.hpp"

DepotLocker::DepotLocker(uint16_t type, uint16_t size) :
	Container(type, size), depotId(0) { }

Attr_ReadValue DepotLocker::readAttr(AttrTypes_t attr, PropStream &propStream) {
	if (attr == ATTR_DEPOT_ID) {
		if (!propStream.read<uint16_t>(depotId)) {
			return ATTR_READ_ERROR;
		}
		return ATTR_READ_CONTINUE;
	}
	return Item::readAttr(attr, propStream);
}

ReturnValue DepotLocker::queryAdd(int32_t, const std::shared_ptr<Thing> &, uint32_t, uint32_t, const std::shared_ptr<Creature> &) {
	return RETURNVALUE_NOTENOUGHROOM;
}

void DepotLocker::postAddNotification(const std::shared_ptr<Thing> &thing, const std::shared_ptr<Cylinder> &oldParent, int32_t index, CylinderLink_t) {
	const auto &parentLocked = m_parent.lock();
	if (parentLocked) {
		parentLocked->postAddNotification(thing, oldParent, index, LINK_PARENT);
	}
}

void DepotLocker::postRemoveNotification(const std::shared_ptr<Thing> &thing, const std::shared_ptr<Cylinder> &newParent, int32_t index, CylinderLink_t) {
	const auto &parentLocked = m_parent.lock();
	if (parentLocked) {
		parentLocked->postRemoveNotification(thing, newParent, index, LINK_PARENT);
	}
}

void DepotLocker::removeInbox(const std::shared_ptr<Inbox> &inbox) {
	const auto cit = std::ranges::find(itemlist, inbox);
	if (cit == itemlist.end()) {
		return;
	}
	itemlist.erase(cit);
}
