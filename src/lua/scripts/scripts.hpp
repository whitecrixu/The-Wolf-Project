/**
 * The Wolf Project - A free and open-source MMORPG server emulator
 * Copyright (©) 2025-2026 The Wolf Project <jakub.polewka92@gmail.com>
 * Repository: https://wolf-project.org
 * License: https://wolf-project.org/license
 * Contributors: https://wolf-project.org/contributors
 * Website: https://wolf-project.org
 */

#pragma once

#include "lua/scripts/luascript.hpp"

class Scripts {
public:
	// non-copyable
	Scripts(const Scripts &) = delete;
	Scripts &operator=(const Scripts &) = delete;

	static Scripts &getInstance();

	void clearAllScripts() const;

	bool loadEventSchedulerScripts(const std::string &fileName);
	bool loadScripts(std::string_view folderName, bool isLib, bool reload);
	LuaScriptInterface &getScriptInterface() {
		return scriptInterface;
	}

private:
	LuaScriptInterface scriptInterface;
	Scripts();
};

constexpr auto g_scripts = Scripts::getInstance;
