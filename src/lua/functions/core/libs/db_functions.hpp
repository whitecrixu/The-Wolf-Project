/**
 * The Wolf Project - A free and open-source MMORPG server emulator
 * Copyright (©) 2025-2026 The Wolf Project <jakub.polewka92@gmail.com>
 * Repository: https://wolf-project.org
 * License: https://wolf-project.org/license
 * Contributors: https://wolf-project.org/contributors
 * Website: https://wolf-project.org
 */

#pragma once

class DBFunctions {
public:
	static void init(lua_State* L);

private:
	static int luaDatabaseAsyncExecute(lua_State* L);
	static int luaDatabaseAsyncStoreQuery(lua_State* L);
	static int luaDatabaseEscapeBlob(lua_State* L);
	static int luaDatabaseEscapeString(lua_State* L);
	static int luaDatabaseExecute(lua_State* L);
	static int luaDatabaseLastInsertId(lua_State* L);
	static int luaDatabaseStoreQuery(lua_State* L);
	static int luaDatabaseTableExists(lua_State* L);
};
