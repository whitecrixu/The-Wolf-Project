/**
 * The Forgotten Server - a free and open-source MMORPG server emulator
 * Copyright (C) 2016  Mark Samman <mark.samman@gmail.com>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program; if not, write to the Free Software Foundation, Inc.,
 * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
 */

#include "otpch.h"

// Disable optimization for this file to avoid MSVC C1061 "blocks nested too deeply"
#ifdef _MSC_VER
#pragma optimize("", off)
#endif

#include "items.h"
#include "spells.h"
#include "movement.h"
#include "weapons.h"

#include "pugicast.h"

extern MoveEvents* g_moveEvents;
extern Weapons* g_weapons;

Items::Items()
{
	items.reserve(30000);
	nameToItems.reserve(30000);
}

void Items::clear()
{
	items.clear();
	reverseItemMap.clear();
	nameToItems.clear();
}

bool Items::reload()
{
	clear();
	loadFromOtb("data/items/items.otb");

	if (!loadFromXml()) {
		return false;
	}

	g_moveEvents->reload();
	g_weapons->reload();
	g_weapons->loadDefaults();
	return true;
}

constexpr auto OTBI = OTB::Identifier{{'O','T', 'B', 'I'}};

FILELOADER_ERRORS Items::loadFromOtb(const std::string& file)
{
	OTB::Loader loader{file, OTBI};

	auto& root = loader.parseTree();

	PropStream props;
	if (loader.getProps(root, props)) {
		//4 byte flags
		//attributes
		//0x01 = version data
		uint32_t flags;
		if (!props.read<uint32_t>(flags)) {
			return ERROR_INVALID_FORMAT;
		}

		uint8_t attr;
		if (!props.read<uint8_t>(attr)) {
			return ERROR_INVALID_FORMAT;
		}

		if (attr == ROOT_ATTR_VERSION) {
			uint16_t datalen;
			if (!props.read<uint16_t>(datalen)) {
				return ERROR_INVALID_FORMAT;
			}

			if (datalen != sizeof(VERSIONINFO)) {
				return ERROR_INVALID_FORMAT;
			}

			VERSIONINFO vi;
			if (!props.read(vi)) {
				return ERROR_INVALID_FORMAT;
			}

			majorVersion = vi.dwMajorVersion; //items otb format file version
			minorVersion = vi.dwMinorVersion; //client version
			buildNumber = vi.dwBuildNumber; //revision
		}
	}

	if (majorVersion == 0xFFFFFFFF) {
		std::cout << "[Warning - Items::loadFromOtb] items.otb using generic client version." << std::endl;
	} else if (majorVersion != 3) {
		std::cout << "Old version detected, a newer version of items.otb is required." << std::endl;
		return ERROR_INVALID_FORMAT;
	} else if (minorVersion < CLIENT_VERSION_1098) {
		std::cout << "A newer version of items.otb is required." << std::endl;
		return ERROR_INVALID_FORMAT;
	}

	for(auto & itemNode : root.children) {
		PropStream stream;
		if (!loader.getProps(itemNode, stream)) {
			return ERROR_INVALID_FORMAT;
		}

		uint32_t flags;
		if (!stream.read<uint32_t>(flags)) {
			return ERROR_INVALID_FORMAT;
		}

		uint16_t serverId = 0;
		uint16_t clientId = 0;
		uint16_t speed = 0;
		uint16_t wareId = 0;
		uint8_t lightLevel = 0;
		uint8_t lightColor = 0;
		uint8_t alwaysOnTopOrder = 0;

		uint8_t attrib;
		while (stream.read<uint8_t>(attrib)) {
			uint16_t datalen;
			if (!stream.read<uint16_t>(datalen)) {
				return ERROR_INVALID_FORMAT;
			}

			switch (attrib) {
				case ITEM_ATTR_SERVERID: {
					if (datalen != sizeof(uint16_t)) {
						return ERROR_INVALID_FORMAT;
					}

					if (!stream.read<uint16_t>(serverId)) {
						return ERROR_INVALID_FORMAT;
					}

					if (serverId > 30000 && serverId < 30100) {
						serverId -= 30000;
					}
					break;
				}

				case ITEM_ATTR_CLIENTID: {
					if (datalen != sizeof(uint16_t)) {
						return ERROR_INVALID_FORMAT;
					}

					if (!stream.read<uint16_t>(clientId)) {
						return ERROR_INVALID_FORMAT;
					}
					break;
				}

				case ITEM_ATTR_SPEED: {
					if (datalen != sizeof(uint16_t)) {
						return ERROR_INVALID_FORMAT;
					}

					if (!stream.read<uint16_t>(speed)) {
						return ERROR_INVALID_FORMAT;
					}
					break;
				}

				case ITEM_ATTR_LIGHT2: {
					if (datalen != sizeof(lightBlock2)) {
						return ERROR_INVALID_FORMAT;
					}

					lightBlock2 lb2;
					if (!stream.read(lb2)) {
						return ERROR_INVALID_FORMAT;
					}

					lightLevel = static_cast<uint8_t>(lb2.lightLevel);
					lightColor = static_cast<uint8_t>(lb2.lightColor);
					break;
				}

				case ITEM_ATTR_TOPORDER: {
					if (datalen != sizeof(uint8_t)) {
						return ERROR_INVALID_FORMAT;
					}

					if (!stream.read<uint8_t>(alwaysOnTopOrder)) {
						return ERROR_INVALID_FORMAT;
					}
					break;
				}

				case ITEM_ATTR_WAREID: {
					if (datalen != sizeof(uint16_t)) {
						return ERROR_INVALID_FORMAT;
					}

					if (!stream.read<uint16_t>(wareId)) {
						return ERROR_INVALID_FORMAT;
					}
					break;
				}

				default: {
					//skip unknown attributes
					if (!stream.skip(datalen)) {
						return ERROR_INVALID_FORMAT;
					}
					break;
				}
			}
		}

		reverseItemMap.emplace(clientId, serverId);

		// store the found item
		if (serverId >= items.size()) {
			items.resize(serverId + 1);
		}
		ItemType& iType = items[serverId];

		iType.group = static_cast<itemgroup_t>(itemNode.type);
		switch (itemNode.type) {
			case ITEM_GROUP_CONTAINER:
				iType.type = ITEM_TYPE_CONTAINER;
				break;
			case ITEM_GROUP_DOOR:
				//not used
				iType.type = ITEM_TYPE_DOOR;
				break;
			case ITEM_GROUP_MAGICFIELD:
				//not used
				iType.type = ITEM_TYPE_MAGICFIELD;
				break;
			case ITEM_GROUP_TELEPORT:
				//not used
				iType.type = ITEM_TYPE_TELEPORT;
				break;
			case ITEM_GROUP_NONE:
			case ITEM_GROUP_GROUND:
			case ITEM_GROUP_SPLASH:
			case ITEM_GROUP_FLUID:
			case ITEM_GROUP_CHARGES:
			case ITEM_GROUP_DEPRECATED:
				break;
			default:
				return ERROR_INVALID_FORMAT;
		}

		iType.blockSolid = hasBitSet(FLAG_BLOCK_SOLID, flags);
		iType.blockProjectile = hasBitSet(FLAG_BLOCK_PROJECTILE, flags);
		iType.blockPathFind = hasBitSet(FLAG_BLOCK_PATHFIND, flags);
		iType.hasHeight = hasBitSet(FLAG_HAS_HEIGHT, flags);
		iType.useable = hasBitSet(FLAG_USEABLE, flags);
		iType.pickupable = hasBitSet(FLAG_PICKUPABLE, flags);
		iType.moveable = hasBitSet(FLAG_MOVEABLE, flags);
		iType.stackable = hasBitSet(FLAG_STACKABLE, flags);

		iType.alwaysOnTop = hasBitSet(FLAG_ALWAYSONTOP, flags);
		iType.isVertical = hasBitSet(FLAG_VERTICAL, flags);
		iType.isHorizontal = hasBitSet(FLAG_HORIZONTAL, flags);
		iType.isHangable = hasBitSet(FLAG_HANGABLE, flags);
		iType.allowDistRead = hasBitSet(FLAG_ALLOWDISTREAD, flags);
		iType.rotatable = hasBitSet(FLAG_ROTATABLE, flags);
		iType.canReadText = hasBitSet(FLAG_READABLE, flags);
		iType.lookThrough = hasBitSet(FLAG_LOOKTHROUGH, flags);
		iType.isAnimation = hasBitSet(FLAG_ANIMATION, flags);
		// iType.walkStack = !hasBitSet(FLAG_FULLTILE, flags);
		iType.forceUse = hasBitSet(FLAG_FORCEUSE, flags);

		iType.id = serverId;
		iType.clientId = clientId;
		iType.speed = speed;
		iType.lightLevel = lightLevel;
		iType.lightColor = lightColor;
		iType.wareId = wareId;
		iType.alwaysOnTopOrder = alwaysOnTopOrder;
	}

	items.shrink_to_fit();
	return ERROR_NONE;
}

bool Items::loadFromXml()
{
	pugi::xml_document doc;
	pugi::xml_parse_result result = doc.load_file("data/items/items.xml", pugi::parse_default | pugi::parse_comments);
	if (!result) {
		printXMLError("Error - Items::loadFromXml", "data/items/items.xml", result);
		return false;
	}

	int lineNumber = 0;
	int totalItems = 0;
	std::string currentVersion = "base";
	std::map<std::string, int> versionItemCounts;

	for (auto node : doc.child("items").children()) {
		lineNumber++;

		// Check if this is a comment node
		if (node.type() == pugi::node_comment) {
			std::string comment = node.value();
			// Trim whitespace
			size_t start = comment.find_first_not_of(" \t");
			size_t end = comment.find_last_not_of(" \t");
			if (start != std::string::npos && end != std::string::npos) {
				comment = comment.substr(start, end - start + 1);
			}
			// Check if it's a version comment (starts with "items")
			if (comment.find("items") == 0 || comment.find("Items") == 0) {
				currentVersion = comment;
			}
			continue;
		}

		pugi::xml_attribute idAttribute = node.attribute("id");
		if (idAttribute) {
			parseItemNode(node, pugi::cast<uint16_t>(idAttribute.value()));
			versionItemCounts[currentVersion]++;
			totalItems++;
			continue;
		}

		pugi::xml_attribute fromIdAttribute = node.attribute("fromid");
		if (!fromIdAttribute) {
			pugi::xml_attribute nameAttribute = node.attribute("name");
			std::cout << "[Warning - Items::loadFromXml] No item id found at item #" << lineNumber;
			if (nameAttribute) {
				std::cout << " (name: " << nameAttribute.as_string() << ")";
			}
			std::cout << std::endl;
			continue;
		}

		pugi::xml_attribute toIdAttribute = node.attribute("toid");
		if (!toIdAttribute) {
			std::cout << "[Warning - Items::loadFromXml] fromid (" << fromIdAttribute.value() << ") without toid" << std::endl;
			continue;
		}

		uint16_t id = pugi::cast<uint16_t>(fromIdAttribute.value());
		uint16_t toId = pugi::cast<uint16_t>(toIdAttribute.value());
		int rangeCount = toId - id + 1;
		versionItemCounts[currentVersion] += rangeCount;
		totalItems += rangeCount;
		while (id <= toId) {
			parseItemNode(node, id++);
		}
	}

	// Display version statistics
	std::cout << "[Items] Loaded " << totalItems << " items total:" << std::endl;
	for (const auto& pair : versionItemCounts) {
		std::cout << "  - " << pair.first << ": " << pair.second << " items" << std::endl;
	}

	return true;
}

// Helper functions to reduce nesting depth in parseItemNode (MSVC C1061 workaround)
namespace {

bool parseItemType(ItemType& it, const std::string& value)
{
	std::string tmpStrValue = asLowerCaseString(value);
	if (tmpStrValue == "key") {
		it.type = ITEM_TYPE_KEY;
	} else if (tmpStrValue == "magicfield") {
		it.type = ITEM_TYPE_MAGICFIELD;
	} else if (tmpStrValue == "container") {
		it.group = ITEM_GROUP_CONTAINER;
		it.type = ITEM_TYPE_CONTAINER;
	} else if (tmpStrValue == "depot") {
		it.type = ITEM_TYPE_DEPOT;
	} else if (tmpStrValue == "rewardchest") {
		it.type = ITEM_TYPE_REWARDCHEST;
	} else if (tmpStrValue == "mailbox") {
		it.type = ITEM_TYPE_MAILBOX;
	} else if (tmpStrValue == "trashholder") {
		it.type = ITEM_TYPE_TRASHHOLDER;
	} else if (tmpStrValue == "teleport") {
		it.type = ITEM_TYPE_TELEPORT;
	} else if (tmpStrValue == "door") {
		it.type = ITEM_TYPE_DOOR;
	} else if (tmpStrValue == "bed") {
		it.type = ITEM_TYPE_BED;
	} else if (tmpStrValue == "rune") {
		it.type = ITEM_TYPE_RUNE;
	} else {
		std::cout << "[Warning - Items::parseItemNode] Unknown type: " << value << std::endl;
	}
	return true;
}

bool parseFloorChange(ItemType& it, const std::string& value)
{
	std::string tmpStrValue = asLowerCaseString(value);
	if (tmpStrValue == "down") {
		it.floorChange = TILESTATE_FLOORCHANGE_DOWN;
	} else if (tmpStrValue == "north") {
		it.floorChange = TILESTATE_FLOORCHANGE_NORTH;
	} else if (tmpStrValue == "south") {
		it.floorChange = TILESTATE_FLOORCHANGE_SOUTH;
	} else if (tmpStrValue == "southalt") {
		it.floorChange = TILESTATE_FLOORCHANGE_SOUTH_ALT;
	} else if (tmpStrValue == "west") {
		it.floorChange = TILESTATE_FLOORCHANGE_WEST;
	} else if (tmpStrValue == "east") {
		it.floorChange = TILESTATE_FLOORCHANGE_EAST;
	} else if (tmpStrValue == "eastalt") {
		it.floorChange = TILESTATE_FLOORCHANGE_EAST_ALT;
	} else {
		std::cout << "[Warning - Items::parseItemNode] Unknown floorChange: " << value << std::endl;
	}
	return true;
}

bool parseCorpseType(ItemType& it, const std::string& value)
{
	std::string tmpStrValue = asLowerCaseString(value);
	if (tmpStrValue == "venom") {
		it.corpseType = RACE_VENOM;
	} else if (tmpStrValue == "blood") {
		it.corpseType = RACE_BLOOD;
	} else if (tmpStrValue == "undead") {
		it.corpseType = RACE_UNDEAD;
	} else if (tmpStrValue == "fire") {
		it.corpseType = RACE_FIRE;
	} else if (tmpStrValue == "energy") {
		it.corpseType = RACE_ENERGY;
	} else {
		std::cout << "[Warning - Items::parseItemNode] Unknown corpseType: " << value << std::endl;
	}
	return true;
}

bool parseFluidSource(ItemType& it, const std::string& value)
{
	std::string tmpStrValue = asLowerCaseString(value);
	if (tmpStrValue == "water") {
		it.fluidSource = FLUID_WATER;
	} else if (tmpStrValue == "blood") {
		it.fluidSource = FLUID_BLOOD;
	} else if (tmpStrValue == "beer") {
		it.fluidSource = FLUID_BEER;
	} else if (tmpStrValue == "slime") {
		it.fluidSource = FLUID_SLIME;
	} else if (tmpStrValue == "lemonade") {
		it.fluidSource = FLUID_LEMONADE;
	} else if (tmpStrValue == "milk") {
		it.fluidSource = FLUID_MILK;
	} else if (tmpStrValue == "mana") {
		it.fluidSource = FLUID_MANA;
	} else if (tmpStrValue == "life") {
		it.fluidSource = FLUID_LIFE;
	} else if (tmpStrValue == "oil") {
		it.fluidSource = FLUID_OIL;
	} else if (tmpStrValue == "urine") {
		it.fluidSource = FLUID_URINE;
	} else if (tmpStrValue == "coconut") {
		it.fluidSource = FLUID_COCONUTMILK;
	} else if (tmpStrValue == "wine") {
		it.fluidSource = FLUID_WINE;
	} else if (tmpStrValue == "mud") {
		it.fluidSource = FLUID_MUD;
	} else if (tmpStrValue == "fruitjuice") {
		it.fluidSource = FLUID_FRUITJUICE;
	} else if (tmpStrValue == "lava") {
		it.fluidSource = FLUID_LAVA;
	} else if (tmpStrValue == "rum") {
		it.fluidSource = FLUID_RUM;
	} else if (tmpStrValue == "swamp") {
		it.fluidSource = FLUID_SWAMP;
	} else if (tmpStrValue == "tea") {
		it.fluidSource = FLUID_TEA;
	} else if (tmpStrValue == "mead") {
		it.fluidSource = FLUID_MEAD;
	} else {
		std::cout << "[Warning - Items::parseItemNode] Unknown fluidSource: " << value << std::endl;
	}
	return true;
}

bool parseWeaponType(ItemType& it, const std::string& value)
{
	std::string tmpStrValue = asLowerCaseString(value);
	if (tmpStrValue == "sword") {
		it.weaponType = WEAPON_SWORD;
	} else if (tmpStrValue == "club") {
		it.weaponType = WEAPON_CLUB;
	} else if (tmpStrValue == "axe") {
		it.weaponType = WEAPON_AXE;
	} else if (tmpStrValue == "shield") {
		it.weaponType = WEAPON_SHIELD;
	} else if (tmpStrValue == "distance") {
		it.weaponType = WEAPON_DISTANCE;
	} else if (tmpStrValue == "wand") {
		it.weaponType = WEAPON_WAND;
	} else if (tmpStrValue == "ammunition") {
		it.weaponType = WEAPON_AMMO;
	} else if (tmpStrValue == "quiver") {
		it.weaponType = WEAPON_QUIVER;
	} else {
		std::cout << "[Warning - Items::parseItemNode] Unknown weaponType: " << value << std::endl;
	}
	return true;
}

bool parseSlotType(ItemType& it, const std::string& value)
{
	std::string tmpStrValue = asLowerCaseString(value);
	if (tmpStrValue == "head") {
		it.slotPosition |= SLOTP_HEAD;
	} else if (tmpStrValue == "body") {
		it.slotPosition |= SLOTP_ARMOR;
	} else if (tmpStrValue == "legs") {
		it.slotPosition |= SLOTP_LEGS;
	} else if (tmpStrValue == "feet") {
		it.slotPosition |= SLOTP_FEET;
	} else if (tmpStrValue == "backpack") {
		it.slotPosition |= SLOTP_BACKPACK;
	} else if (tmpStrValue == "two-handed") {
		it.slotPosition |= SLOTP_TWO_HAND;
	} else if (tmpStrValue == "right-hand") {
		it.slotPosition &= ~SLOTP_LEFT;
	} else if (tmpStrValue == "left-hand") {
		it.slotPosition &= ~SLOTP_RIGHT;
	} else if (tmpStrValue == "necklace") {
		it.slotPosition |= SLOTP_NECKLACE;
	} else if (tmpStrValue == "ring") {
		it.slotPosition |= SLOTP_RING;
	} else if (tmpStrValue == "ammo") {
		it.slotPosition |= SLOTP_AMMO;
	} else if (tmpStrValue == "hand") {
		it.slotPosition |= SLOTP_HAND;
	} else {
		std::cout << "[Warning - Items::parseItemNode] Unknown slotType: " << value << std::endl;
	}
	return true;
}

} // anonymous namespace

// Forward declaration for more helper functions
namespace {

bool parseAbsorbPercent(ItemType& it, const std::string& key, const std::string& value)
{
	int16_t val = static_cast<int16_t>(std::stoi(value));
	std::string tmpStrValue = asLowerCaseString(key);
	
	if (tmpStrValue == "absorbpercentall" || tmpStrValue == "absorbpercentallelements") {
		Abilities& abilities = it.getAbilities();
		for (auto& i : abilities.absorbPercent) {
			i += val;
		}
		return true;
	} else if (tmpStrValue == "absorbpercentelements") {
		Abilities& abilities = it.getAbilities();
		abilities.absorbPercent[combatTypeToIndex(COMBAT_ENERGYDAMAGE)] += val;
		abilities.absorbPercent[combatTypeToIndex(COMBAT_FIREDAMAGE)] += val;
		abilities.absorbPercent[combatTypeToIndex(COMBAT_EARTHDAMAGE)] += val;
		abilities.absorbPercent[combatTypeToIndex(COMBAT_ICEDAMAGE)] += val;
		return true;
	} else if (tmpStrValue == "absorbpercentmagic") {
		Abilities& abilities = it.getAbilities();
		abilities.absorbPercent[combatTypeToIndex(COMBAT_ENERGYDAMAGE)] += val;
		abilities.absorbPercent[combatTypeToIndex(COMBAT_FIREDAMAGE)] += val;
		abilities.absorbPercent[combatTypeToIndex(COMBAT_EARTHDAMAGE)] += val;
		abilities.absorbPercent[combatTypeToIndex(COMBAT_ICEDAMAGE)] += val;
		abilities.absorbPercent[combatTypeToIndex(COMBAT_HOLYDAMAGE)] += val;
		abilities.absorbPercent[combatTypeToIndex(COMBAT_DEATHDAMAGE)] += val;
		return true;
	} else if (tmpStrValue == "absorbpercentenergy") {
		it.getAbilities().absorbPercent[combatTypeToIndex(COMBAT_ENERGYDAMAGE)] += val;
		return true;
	} else if (tmpStrValue == "absorbpercentfire") {
		it.getAbilities().absorbPercent[combatTypeToIndex(COMBAT_FIREDAMAGE)] += val;
		return true;
	} else if (tmpStrValue == "absorbpercentpoison" || tmpStrValue == "absorbpercentearth") {
		it.getAbilities().absorbPercent[combatTypeToIndex(COMBAT_EARTHDAMAGE)] += val;
		return true;
	} else if (tmpStrValue == "absorbpercentice") {
		it.getAbilities().absorbPercent[combatTypeToIndex(COMBAT_ICEDAMAGE)] += val;
		return true;
	} else if (tmpStrValue == "absorbpercentholy") {
		it.getAbilities().absorbPercent[combatTypeToIndex(COMBAT_HOLYDAMAGE)] += val;
		return true;
	} else if (tmpStrValue == "absorbpercentdeath") {
		it.getAbilities().absorbPercent[combatTypeToIndex(COMBAT_DEATHDAMAGE)] += val;
		return true;
	} else if (tmpStrValue == "absorbpercentlifedrain") {
		it.getAbilities().absorbPercent[combatTypeToIndex(COMBAT_LIFEDRAIN)] += val;
		return true;
	} else if (tmpStrValue == "absorbpercentmanadrain") {
		it.getAbilities().absorbPercent[combatTypeToIndex(COMBAT_MANADRAIN)] += val;
		return true;
	} else if (tmpStrValue == "absorbpercentdrown") {
		it.getAbilities().absorbPercent[combatTypeToIndex(COMBAT_DROWNDAMAGE)] += val;
		return true;
	} else if (tmpStrValue == "absorbpercentphysical") {
		it.getAbilities().absorbPercent[combatTypeToIndex(COMBAT_PHYSICALDAMAGE)] += val;
		return true;
	} else if (tmpStrValue == "absorbpercenthealing") {
		it.getAbilities().absorbPercent[combatTypeToIndex(COMBAT_HEALING)] += val;
		return true;
	}
	return false;
}

bool parseReflectPercent(ItemType& it, const std::string& key, const std::string& value)
{
	int16_t val = static_cast<int16_t>(std::stoi(value));
	std::string tmpStrValue = asLowerCaseString(key);
	
	if (tmpStrValue == "reflectpercentall" || tmpStrValue == "reflectpercentallelements") {
		Abilities& abilities = it.getAbilities();
		for (size_t i = 0; i < COMBAT_COUNT; i++) {
			abilities.reflectPercent[i] += val;
		}
		return true;
	} else if (tmpStrValue == "reflectbpercentelements" || tmpStrValue == "reflectpercentelements") {
		Abilities& abilities = it.getAbilities();
		abilities.reflectPercent[combatTypeToIndex(COMBAT_ENERGYDAMAGE)] += val;
		abilities.reflectPercent[combatTypeToIndex(COMBAT_FIREDAMAGE)] += val;
		abilities.reflectPercent[combatTypeToIndex(COMBAT_EARTHDAMAGE)] += val;
		abilities.reflectPercent[combatTypeToIndex(COMBAT_ICEDAMAGE)] += val;
		return true;
	} else if (tmpStrValue == "reflectpercentmagic") {
		Abilities& abilities = it.getAbilities();
		abilities.reflectPercent[combatTypeToIndex(COMBAT_ENERGYDAMAGE)] += val;
		abilities.reflectPercent[combatTypeToIndex(COMBAT_FIREDAMAGE)] += val;
		abilities.reflectPercent[combatTypeToIndex(COMBAT_EARTHDAMAGE)] += val;
		abilities.reflectPercent[combatTypeToIndex(COMBAT_ICEDAMAGE)] += val;
		abilities.reflectPercent[combatTypeToIndex(COMBAT_HOLYDAMAGE)] += val;
		abilities.reflectPercent[combatTypeToIndex(COMBAT_DEATHDAMAGE)] += val;
		return true;
	} else if (tmpStrValue == "reflectpercentenergy") {
		it.getAbilities().reflectPercent[combatTypeToIndex(COMBAT_ENERGYDAMAGE)] += val;
		return true;
	} else if (tmpStrValue == "reflectpercentfire") {
		it.getAbilities().reflectPercent[combatTypeToIndex(COMBAT_FIREDAMAGE)] += val;
		return true;
	} else if (tmpStrValue == "reflectpercentpoison" || tmpStrValue == "reflectpercentearth") {
		it.getAbilities().reflectPercent[combatTypeToIndex(COMBAT_EARTHDAMAGE)] += val;
		return true;
	} else if (tmpStrValue == "reflectpercentice") {
		it.getAbilities().reflectPercent[combatTypeToIndex(COMBAT_ICEDAMAGE)] += val;
		return true;
	} else if (tmpStrValue == "reflectpercentholy") {
		it.getAbilities().reflectPercent[combatTypeToIndex(COMBAT_HOLYDAMAGE)] += val;
		return true;
	} else if (tmpStrValue == "reflectpercentdeath") {
		it.getAbilities().reflectPercent[combatTypeToIndex(COMBAT_DEATHDAMAGE)] += val;
		return true;
	} else if (tmpStrValue == "reflectpercentlifedrain") {
		it.getAbilities().reflectPercent[combatTypeToIndex(COMBAT_LIFEDRAIN)] += val;
		return true;
	} else if (tmpStrValue == "reflectpercentmanadrain") {
		it.getAbilities().reflectPercent[combatTypeToIndex(COMBAT_MANADRAIN)] += val;
		return true;
	} else if (tmpStrValue == "reflectpercentphysical") {
		it.getAbilities().reflectPercent[combatTypeToIndex(COMBAT_PHYSICALDAMAGE)] += val;
		return true;
	}
	return false;
}

bool parseSuppress(ItemType& it, const std::string& key, bool value)
{
	if (!value) return false;
	
	std::string tmpStrValue = asLowerCaseString(key);
	if (tmpStrValue == "suppressdrunk") {
		it.getAbilities().conditionSuppressions |= CONDITION_DRUNK;
		return true;
	} else if (tmpStrValue == "suppressenergy") {
		it.getAbilities().conditionSuppressions |= CONDITION_ENERGY;
		return true;
	} else if (tmpStrValue == "suppressfire") {
		it.getAbilities().conditionSuppressions |= CONDITION_FIRE;
		return true;
	} else if (tmpStrValue == "suppresspoison") {
		it.getAbilities().conditionSuppressions |= CONDITION_POISON;
		return true;
	} else if (tmpStrValue == "suppressdrown") {
		it.getAbilities().conditionSuppressions |= CONDITION_DROWN;
		return true;
	} else if (tmpStrValue == "suppressphysical") {
		it.getAbilities().conditionSuppressions |= CONDITION_BLEEDING;
		return true;
	} else if (tmpStrValue == "suppressfreeze") {
		it.getAbilities().conditionSuppressions |= CONDITION_FREEZING;
		return true;
	} else if (tmpStrValue == "suppressdazzle") {
		it.getAbilities().conditionSuppressions |= CONDITION_DAZZLED;
		return true;
	} else if (tmpStrValue == "suppresscurse") {
		it.getAbilities().conditionSuppressions |= CONDITION_CURSED;
		return true;
	}
	return false;
}

} // anonymous namespace

void Items::parseItemNode(const pugi::xml_node& itemNode, uint16_t id)
{
	if (id > 30000 && id < 30100) {
		id -= 30000;

		if (id >= items.size()) {
			items.resize(id + 1);
		}
		ItemType& iType = items[id];
		iType.id = id;
	}

	ItemType& it = getItemType(id);
	if (it.id == 0) {
		return;
	}

	it.name = itemNode.attribute("name").as_string();

	nameToItems.insert({ asLowerCaseString(it.name), id });

	pugi::xml_attribute articleAttribute = itemNode.attribute("article");
	if (articleAttribute) {
		it.article = articleAttribute.as_string();
	}

	pugi::xml_attribute pluralAttribute = itemNode.attribute("plural");
	if (pluralAttribute) {
		it.pluralName = pluralAttribute.as_string();
	}

	for (auto attributeNode : itemNode.children()) {
		pugi::xml_attribute keyAttribute = attributeNode.attribute("key");
		if (!keyAttribute) {
			continue;
		}

		pugi::xml_attribute valueAttribute = attributeNode.attribute("value");
		if (!valueAttribute) {
			continue;
		}

		std::string tmpStrValue = asLowerCaseString(keyAttribute.as_string());
		if (tmpStrValue == "type") {
			parseItemType(it, valueAttribute.as_string());
		} else if (tmpStrValue == "description") {
			it.description = valueAttribute.as_string();
		} else if (tmpStrValue == "primarytype") {
			it.primaryType = valueAttribute.as_string();
		} else if (tmpStrValue == "runespellname") {
			it.runeSpellName = valueAttribute.as_string();
		} else if (tmpStrValue == "weight") {
			it.weight = pugi::cast<uint32_t>(valueAttribute.value());
		} else if (tmpStrValue == "showcount") {
			it.showCount = valueAttribute.as_bool();
		} else if (tmpStrValue == "armor") {
			it.armor = pugi::cast<int32_t>(valueAttribute.value());
		} else if (tmpStrValue == "defense") {
			it.defense = pugi::cast<int32_t>(valueAttribute.value());
		} else if (tmpStrValue == "extradef") {
			it.extraDefense = pugi::cast<int32_t>(valueAttribute.value());
		} else if (tmpStrValue == "attack") {
			it.attack = pugi::cast<int32_t>(valueAttribute.value());
		} else if (tmpStrValue == "rotateto") {
			it.rotateTo = pugi::cast<int32_t>(valueAttribute.value());
		} else if (tmpStrValue == "moveable" || tmpStrValue == "movable") {
			it.moveable = valueAttribute.as_bool();
		} else if (tmpStrValue == "blockprojectile") {
			it.blockProjectile = valueAttribute.as_bool();
		} else if (tmpStrValue == "allowpickupable" || tmpStrValue == "pickupable") {
			it.allowPickupable = valueAttribute.as_bool();
		} else if (tmpStrValue == "floorchange") {
			parseFloorChange(it, valueAttribute.as_string());
		} else if (tmpStrValue == "corpsetype") {
			parseCorpseType(it, valueAttribute.as_string());
		} else if (tmpStrValue == "containersize") {
			it.maxItems = pugi::cast<uint16_t>(valueAttribute.value());
		} else if (tmpStrValue == "fluidsource") {
			parseFluidSource(it, valueAttribute.as_string());
		} else if (tmpStrValue == "readable") {
			it.canReadText = valueAttribute.as_bool();
		} else if (tmpStrValue == "writeable") {
			it.canWriteText = valueAttribute.as_bool();
			it.canReadText = it.canWriteText;
		} else if (tmpStrValue == "maxtextlen") {
			it.maxTextLen = pugi::cast<uint16_t>(valueAttribute.value());
		} else if (tmpStrValue == "writeonceitemid") {
			it.writeOnceItemId = pugi::cast<uint16_t>(valueAttribute.value());
		} else if (tmpStrValue == "weapontype") {
			parseWeaponType(it, valueAttribute.as_string());
		} else if (tmpStrValue == "slottype") {
			parseSlotType(it, valueAttribute.as_string());
		} else if (tmpStrValue == "ammotype") {
			it.ammoType = getAmmoType(asLowerCaseString(valueAttribute.as_string()));
			if (it.ammoType == AMMO_NONE) {
				std::cout << "[Warning - Items::parseItemNode] Unknown ammoType: " << valueAttribute.as_string() << std::endl;
			}
		} else if (tmpStrValue == "shoottype") {
			ShootType_t shoot = getShootType(asLowerCaseString(valueAttribute.as_string()));
			if (shoot != CONST_ANI_NONE) {
				it.shootType = shoot;
			} else {
				std::cout << "[Warning - Items::parseItemNode] Unknown shootType: " << valueAttribute.as_string() << std::endl;
			}
		} else if (tmpStrValue == "effect") {
			MagicEffectClasses effect = getMagicEffect(asLowerCaseString(valueAttribute.as_string()));
			if (effect != CONST_ME_NONE) {
				it.magicEffect = effect;
			} else {
				std::cout << "[Warning - Items::parseItemNode] Unknown effect: " << valueAttribute.as_string() << std::endl;
			}
		} else if (tmpStrValue == "range") {
			it.shootRange = pugi::cast<uint16_t>(valueAttribute.value());
		} else if (tmpStrValue == "stopduration") {
			it.stopTime = valueAttribute.as_bool();
		} else if (tmpStrValue == "decayto") {
			it.decayTo = pugi::cast<int32_t>(valueAttribute.value());
		} else if (tmpStrValue == "transformequipto") {
			it.transformEquipTo = pugi::cast<uint16_t>(valueAttribute.value());
		} else if (tmpStrValue == "transformdeequipto") {
			it.transformDeEquipTo = pugi::cast<uint16_t>(valueAttribute.value());
		} else if (tmpStrValue == "duration") {
			it.decayTime = pugi::cast<uint32_t>(valueAttribute.value());
		} else if (tmpStrValue == "showduration") {
			it.showDuration = valueAttribute.as_bool();
		} else if (tmpStrValue == "charges") {
			it.charges = pugi::cast<uint32_t>(valueAttribute.value());
		} else if (tmpStrValue == "showcharges") {
			it.showCharges = valueAttribute.as_bool();
		} else if (tmpStrValue == "showattributes") {
			it.showAttributes = valueAttribute.as_bool();
		} else if (tmpStrValue == "hitchance") {
			it.hitChance = std::min<int8_t>(100, std::max<int8_t>(-100, pugi::cast<int16_t>(valueAttribute.value())));
		} else if (tmpStrValue == "maxhitchance") {
			it.maxHitChance = std::min<uint32_t>(100, pugi::cast<uint32_t>(valueAttribute.value()));
		} else if (tmpStrValue == "invisible") {
			it.getAbilities().invisible = valueAttribute.as_bool();
		} else if (tmpStrValue == "speed") {
			it.getAbilities().speed = pugi::cast<int32_t>(valueAttribute.value());
		} else if (tmpStrValue == "healthgain") {
			Abilities& abilities = it.getAbilities();
			abilities.regeneration = true;
			abilities.healthGain = pugi::cast<uint32_t>(valueAttribute.value());
		} else if (tmpStrValue == "healthticks") {
			Abilities& abilities = it.getAbilities();
			abilities.regeneration = true;
			abilities.healthTicks = pugi::cast<uint32_t>(valueAttribute.value());
		} else if (tmpStrValue == "managain") {
			Abilities& abilities = it.getAbilities();
			abilities.regeneration = true;
			abilities.manaGain = pugi::cast<uint32_t>(valueAttribute.value());
		} else if (tmpStrValue == "manaticks") {
			Abilities& abilities = it.getAbilities();
			abilities.regeneration = true;
			abilities.manaTicks = pugi::cast<uint32_t>(valueAttribute.value());
		} else if (tmpStrValue == "manashield") {
			it.getAbilities().manaShield = valueAttribute.as_bool();
		} else if (tmpStrValue == "skillsword") {
			it.getAbilities().skills[SKILL_SWORD] = pugi::cast<int32_t>(valueAttribute.value());
		} else if (tmpStrValue == "skillaxe") {
			it.getAbilities().skills[SKILL_AXE] = pugi::cast<int32_t>(valueAttribute.value());
		} else if (tmpStrValue == "skillclub") {
			it.getAbilities().skills[SKILL_CLUB] = pugi::cast<int32_t>(valueAttribute.value());
		} else if (tmpStrValue == "skilldist") {
			it.getAbilities().skills[SKILL_DISTANCE] = pugi::cast<int32_t>(valueAttribute.value());
		} else if (tmpStrValue == "skillfish") {
			it.getAbilities().skills[SKILL_FISHING] = pugi::cast<int32_t>(valueAttribute.value());
		} else if (tmpStrValue == "skillshield") {
			it.getAbilities().skills[SKILL_SHIELD] = pugi::cast<int32_t>(valueAttribute.value());
		} else if (tmpStrValue == "skillfist") {
			it.getAbilities().skills[SKILL_FIST] = pugi::cast<int32_t>(valueAttribute.value());
		} else if (tmpStrValue == "skillcriticalchance") {
			it.getAbilities().skills[SKILL_CRITICAL_HIT_CHANCE] = pugi::cast<int32_t>(valueAttribute.value());
		} else if (tmpStrValue == "skillcriticaldamage") {
			it.getAbilities().skills[SKILL_CRITICAL_HIT_DAMAGE] = pugi::cast<int32_t>(valueAttribute.value());
		} else if (tmpStrValue == "skilllifechance") {
			it.getAbilities().skills[SKILL_LIFE_LEECH_CHANCE] = pugi::cast<int32_t>(valueAttribute.value());
		} else if (tmpStrValue == "skilllifeamount") {
			it.getAbilities().skills[SKILL_LIFE_LEECH_AMOUNT] = pugi::cast<int32_t>(valueAttribute.value());
		} else if (tmpStrValue == "skillmanachance") {
			it.getAbilities().skills[SKILL_MANA_LEECH_CHANCE] = pugi::cast<int32_t>(valueAttribute.value());
		} else if (tmpStrValue == "skillmanaamount") {
			it.getAbilities().skills[SKILL_MANA_LEECH_AMOUNT] = pugi::cast<int32_t>(valueAttribute.value());
		} else if (tmpStrValue == "maxhitpoints") {
			it.getAbilities().stats[STAT_MAXHITPOINTS] = pugi::cast<int32_t>(valueAttribute.value());
		} else if (tmpStrValue == "maxhitpointspercent") {
			it.getAbilities().statsPercent[STAT_MAXHITPOINTS] = pugi::cast<int32_t>(valueAttribute.value());
		} else if (tmpStrValue == "maxmanapoints") {
			it.getAbilities().stats[STAT_MAXMANAPOINTS] = pugi::cast<int32_t>(valueAttribute.value());
		} else if (tmpStrValue == "maxmanapointspercent") {
			it.getAbilities().statsPercent[STAT_MAXMANAPOINTS] = pugi::cast<int32_t>(valueAttribute.value());
		} else if (tmpStrValue == "magicpoints" || tmpStrValue == "magiclevelpoints") {
			it.getAbilities().stats[STAT_MAGICPOINTS] = pugi::cast<int32_t>(valueAttribute.value());
		} else if (tmpStrValue == "magicpointspercent") {
			it.getAbilities().statsPercent[STAT_MAGICPOINTS] = pugi::cast<int32_t>(valueAttribute.value());
		} else if (tmpStrValue == "fieldabsorbpercentenergy") {
			it.getAbilities().fieldAbsorbPercent[combatTypeToIndex(COMBAT_ENERGYDAMAGE)] += pugi::cast<int16_t>(valueAttribute.value());
		} else if (tmpStrValue == "fieldabsorbpercentfire") {
			it.getAbilities().fieldAbsorbPercent[combatTypeToIndex(COMBAT_FIREDAMAGE)] += pugi::cast<int16_t>(valueAttribute.value());
		} else if (tmpStrValue == "fieldabsorbpercentpoison" || tmpStrValue == "fieldabsorpercentearth") {
			it.getAbilities().fieldAbsorbPercent[combatTypeToIndex(COMBAT_EARTHDAMAGE)] += pugi::cast<int16_t>(valueAttribute.value());
		} else if (tmpStrValue.find("absorbpercent") == 0) {
			parseAbsorbPercent(it, tmpStrValue, valueAttribute.value());
		} else if (tmpStrValue.find("reflectpercent") == 0 || tmpStrValue == "reflectbpercentelements") {
			parseReflectPercent(it, tmpStrValue, valueAttribute.value());
		} else if (tmpStrValue.find("suppress") == 0) {
			parseSuppress(it, tmpStrValue, valueAttribute.as_bool());
		} else if (tmpStrValue == "field") {
			it.group = ITEM_GROUP_MAGICFIELD;
			it.type = ITEM_TYPE_MAGICFIELD;

			CombatType_t combatType = COMBAT_NONE;
			ConditionDamage* conditionDamage = nullptr;

			tmpStrValue = asLowerCaseString(valueAttribute.as_string());
			if (tmpStrValue == "fire") {
				conditionDamage = new ConditionDamage(CONDITIONID_COMBAT, CONDITION_FIRE);
				combatType = COMBAT_FIREDAMAGE;
			} else if (tmpStrValue == "energy") {
				conditionDamage = new ConditionDamage(CONDITIONID_COMBAT, CONDITION_ENERGY);
				combatType = COMBAT_ENERGYDAMAGE;
			} else if (tmpStrValue == "poison") {
				conditionDamage = new ConditionDamage(CONDITIONID_COMBAT, CONDITION_POISON);
				combatType = COMBAT_EARTHDAMAGE;
			} else if (tmpStrValue == "drown") {
				conditionDamage = new ConditionDamage(CONDITIONID_COMBAT, CONDITION_DROWN);
				combatType = COMBAT_DROWNDAMAGE;
			} else if (tmpStrValue == "physical") {
				conditionDamage = new ConditionDamage(CONDITIONID_COMBAT, CONDITION_BLEEDING);
				combatType = COMBAT_PHYSICALDAMAGE;
			} else {
				std::cout << "[Warning - Items::parseItemNode] Unknown field value: " << valueAttribute.as_string() << std::endl;
			}

			if (combatType != COMBAT_NONE) {
				it.combatType = combatType;
				it.conditionDamage.reset(conditionDamage);
				uint32_t ticks = 0;
				int32_t damage = 0;
				int32_t start = 0;
				int32_t count = 1;

				for (auto subAttributeNode : attributeNode.children()) {
					pugi::xml_attribute subKeyAttribute = subAttributeNode.attribute("key");
					if (!subKeyAttribute) {
						continue;
					}

					pugi::xml_attribute subValueAttribute = subAttributeNode.attribute("value");
					if (!subValueAttribute) {
						continue;
					}

					tmpStrValue = asLowerCaseString(subKeyAttribute.as_string());
					if (tmpStrValue == "ticks") {
						ticks = pugi::cast<uint32_t>(subValueAttribute.value());
					} else if (tmpStrValue == "count") {
						count = std::max<int32_t>(1, pugi::cast<int32_t>(subValueAttribute.value()));
					} else if (tmpStrValue == "start") {
						start = std::max<int32_t>(0, pugi::cast<int32_t>(subValueAttribute.value()));
					} else if (tmpStrValue == "damage") {
						damage = -pugi::cast<int32_t>(subValueAttribute.value());

						if (start > 0) {
							std::list<int32_t> damageList;
							ConditionDamage::generateDamageList(damage, start, damageList);
							for (int32_t damageValue : damageList) {
								conditionDamage->addDamage(1, ticks, -damageValue);
							}

							start = 0;
						} else {
							conditionDamage->addDamage(count, ticks, damage);
						}
					}
				}

				conditionDamage->setParam(CONDITION_PARAM_FIELD, 1);

				if (conditionDamage->getTotalDamage() > 0) {
					conditionDamage->setParam(CONDITION_PARAM_FORCEUPDATE, 1);
				}
			}
		} else if (tmpStrValue == "replaceable") {
			it.replaceable = valueAttribute.as_bool();
		} else if (tmpStrValue == "partnerdirection") {
			it.bedPartnerDir = getDirection(valueAttribute.as_string());
		} else if (tmpStrValue == "leveldoor") {
			it.levelDoor = pugi::cast<uint32_t>(valueAttribute.value());
		} else if (tmpStrValue == "maletransformto" || tmpStrValue == "malesleeper") {
			uint16_t value = pugi::cast<uint16_t>(valueAttribute.value());
			it.transformToOnUse[PLAYERSEX_MALE] = value;
			ItemType& other = getItemType(value);
			if (other.transformToFree == 0) {
				other.transformToFree = it.id;
			}

			if (it.transformToOnUse[PLAYERSEX_FEMALE] == 0) {
				it.transformToOnUse[PLAYERSEX_FEMALE] = value;
			}
		} else if (tmpStrValue == "femaletransformto" || tmpStrValue == "femalesleeper") {
			uint16_t value = pugi::cast<uint16_t>(valueAttribute.value());
			it.transformToOnUse[PLAYERSEX_FEMALE] = value;

			ItemType& other = getItemType(value);
			if (other.transformToFree == 0) {
				other.transformToFree = it.id;
			}

			if (it.transformToOnUse[PLAYERSEX_MALE] == 0) {
				it.transformToOnUse[PLAYERSEX_MALE] = value;
			}
		} else if (tmpStrValue == "transformto") {
			it.transformToFree = pugi::cast<uint16_t>(valueAttribute.value());
		} else if (tmpStrValue == "destroyto") {
			it.destroyTo = pugi::cast<uint16_t>(valueAttribute.value());
		} else if (tmpStrValue == "elementice") {
			Abilities& abilities = it.getAbilities();
			abilities.elementDamage = pugi::cast<uint16_t>(valueAttribute.value());
			abilities.elementType = COMBAT_ICEDAMAGE;
		} else if (tmpStrValue == "elementearth") {
			Abilities& abilities = it.getAbilities();
			abilities.elementDamage = pugi::cast<uint16_t>(valueAttribute.value());
			abilities.elementType = COMBAT_EARTHDAMAGE;
		} else if (tmpStrValue == "elementfire") {
			Abilities& abilities = it.getAbilities();
			abilities.elementDamage = pugi::cast<uint16_t>(valueAttribute.value());
			abilities.elementType = COMBAT_FIREDAMAGE;
		} else if (tmpStrValue == "elementenergy") {
			Abilities& abilities = it.getAbilities();
			abilities.elementDamage = pugi::cast<uint16_t>(valueAttribute.value());
			abilities.elementType = COMBAT_ENERGYDAMAGE;
		} else if (tmpStrValue == "elementdeath") {
			Abilities& abilities = it.getAbilities();
			abilities.elementDamage = pugi::cast<uint16_t>(valueAttribute.value());
			abilities.elementType = COMBAT_DEATHDAMAGE;
		} else if (tmpStrValue == "elementholy") {
			Abilities& abilities = it.getAbilities();
			abilities.elementDamage = pugi::cast<uint16_t>(valueAttribute.value());
			abilities.elementType = COMBAT_HOLYDAMAGE;
		} else if (tmpStrValue == "walkstack") {
			it.walkStack = valueAttribute.as_bool();
		} else if (tmpStrValue == "blocking") {
			it.blockSolid = valueAttribute.as_bool();
		} else if (tmpStrValue == "allowdistread") {
			it.allowDistRead = booleanString(valueAttribute.as_string());
		} else if (tmpStrValue == "forceserialize" || tmpStrValue == "forcesave") {
			it.forceSerialize = valueAttribute.as_bool();
		} else if (tmpStrValue == "supply") {
			it.supply = valueAttribute.as_bool();
		} else if (tmpStrValue == "worth") {
			it.worth = pugi::cast<uint64_t>(valueAttribute.value());
		} else if (tmpStrValue == "criticalhitchance" || tmpStrValue == "criticalhitamount") {
			// Ignored - SPECIALSKILL not implemented in this version
		} else {
			std::cout << "[Warning - Items::parseItemNode] Unknown key value: " << keyAttribute.as_string() << std::endl;
		}
	}

	//check bed items
	if ((it.transformToFree != 0 || it.transformToOnUse[PLAYERSEX_FEMALE] != 0 || it.transformToOnUse[PLAYERSEX_MALE] != 0) && it.type != ITEM_TYPE_BED) {
		std::cout << "[Warning - Items::parseItemNode] Item " << it.id << " is not set as a bed-type" << std::endl;
	}
}

ItemType& Items::getItemType(size_t id)
{
	if (id < items.size()) {
		return items[id];
	}
	return items.front();
}

const ItemType& Items::getItemType(size_t id) const
{
	if (id < items.size()) {
		return items[id];
	}
	return items.front();
}

const ItemType& Items::getItemIdByClientId(uint16_t spriteId) const
{
	auto it = reverseItemMap.find(spriteId);
	if (it != reverseItemMap.end()) {
		return getItemType(it->second);
	}
	return items.front();
}

uint16_t Items::getItemIdByName(const std::string& name)
{
	auto result = nameToItems.find(asLowerCaseString(name));

	if (result == nameToItems.end())
		return 0;

	return result->second;
}

#ifdef _MSC_VER
#pragma optimize("", on)
#endif
