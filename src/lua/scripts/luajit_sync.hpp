/**
 * The Wolf Project - A free and open-source MMORPG server emulator
 * Copyright (©) 2025-2026 The Wolf Project <jakub.polewka92@gmail.com>
 * Repository: https://wolf-project.org
 * License: https://wolf-project.org/license
 * Contributors: https://wolf-project.org/contributors
 * Website: https://wolf-project.org
 */

#pragma once

#if LUA_VERSION_NUM >= 502
	#ifndef LUA_COMPAT_ALL
		#ifndef LUA_COMPAT_MODULE
			#define luaL_register(L, libname, l)(luaL_newlib(L, l),
	lua_pushvalue(L, -1), lua_setglobal(L, libname))
		#endif
		#undef lua_equal
		#define lua_equal(L, i1, i2) lua_compare(L, (i1), (i2), LUA_OPEQ)
	#endif
#endif
