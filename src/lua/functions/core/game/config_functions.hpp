/**
 * The Wolf Project - A free and open-source MMORPG server emulator
 * Copyright (©) 2025-2026 The Wolf Project <jakub.polewka92@gmail.com>
 * Repository: https://wolf-project.org
 * License: https://wolf-project.org/license
 * Contributors: https://wolf-project.org/contributors
 * Website: https://wolf-project.org
 */

#pragma once

#include "declarations.hpp"
class ConfigFunctions {
public:
	static void init(lua_State* L);

private:
	/**
	 * @brief Retrieves a float configuration value from the configuration manager, with an optional rounding.
	 *
	 * This function is a Lua binding used to get a float value from the configuration manager. It requires
	 * a key as the first argument, which should be a valid enumeration. An optional second boolean argument
	 * specifies whether the retrieved float should be rounded to two decimal places.
	 *
	 * @param L Pointer to the Lua state. The first argument must be a valid enum key, and the second argument (optional)
	 * can be a boolean indicating whether to round the result.
	 *
	 * @return Returns 1 after pushing the result onto the Lua stack, indicating the number of return values.
	 *
	 * @exception reportErrorFunc Throws an error if the first argument is not a valid enum.
	 *
	 * Usage:
	 *  local result = ConfigManager.getFloat(ConfigKey.SomeKey)
	 *  local result_rounded = ConfigManager.getFloat(ConfigKey.SomeKey, false)
	 *
	 * Detailed behavior:
	 * 1. Extracts the key from the first Lua stack argument as an enumeration of type `ConfigKey_t`.
	 * 2. Checks if the second argument is provided; if not, defaults to true for rounding.
	 * 3. Retrieves the float value associated with the key from the configuration manager.
	 * 4. If rounding is requested, rounds the value to two decimal places.
	 * 5. Logs the method call and the obtained value using the debug logger.
	 * 6. Pushes the final value (rounded or original) back onto the Lua stack.
	 * 7. Returns 1 to indicate a single return value.
	 */
	static int luaConfigManagerGetFloat(lua_State* L);
	static int luaConfigManagerGetBoolean(lua_State* L);
	static int luaConfigManagerGetNumber(lua_State* L);
	static int luaConfigManagerGetString(lua_State* L);
};
