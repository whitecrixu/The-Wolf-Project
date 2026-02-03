/**
 * The Wolf Project - A free and open-source MMORPG server emulator
 * Copyright (©) 2025-2026 The Wolf Project <jakub.polewka92@gmail.com>
 * Repository: https://wolf-project.org
 * License: https://wolf-project.org/license
 * Contributors: https://wolf-project.org/contributors
 * Website: https://wolf-project.org
 */

#pragma once

#include "map/map.hpp"

class IOMapSerialize {
public:
	static void loadHouseItems(Map* map);
	static bool saveHouseItems();
	static bool loadHouseInfo();
	static bool saveHouseInfo();

private:
	static bool SaveHouseInfoGuard();
	static bool SaveHouseItemsGuard();
	static void saveItem(PropWriteStream &stream, const std::shared_ptr<Item> &item);
	static void saveTile(PropWriteStream &stream, const std::shared_ptr<Tile> &tile);

	static bool loadContainer(PropStream &propStream, const std::shared_ptr<Container> &container);
	static bool loadItem(PropStream &propStream, const std::shared_ptr<Cylinder> &parent, bool isHouseItem = false);
};
