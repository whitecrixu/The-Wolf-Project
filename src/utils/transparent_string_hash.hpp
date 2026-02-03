/**
 * The Wolf Project - A free and open-source MMORPG server emulator
 * Copyright (©) 2025-2026 The Wolf Project <jakub.polewka92@gmail.com>
 * Repository: https://wolf-project.org
 * License: https://wolf-project.org/license
 * Contributors: https://wolf-project.org/contributors
 * Website: https://wolf-project.org
 */

#pragma once

class TransparentStringHasher {
public:
	using is_transparent = void;
	size_t operator()(const std::string &key) const noexcept {
		return std::hash<std::string> {}(key);
	}
	size_t operator()(std::string_view key) const noexcept {
		return std::hash<std::string_view> {}(key);
	}
	size_t operator()(const char* key) const noexcept {
		return std::hash<std::string_view> {}(key);
	}
};
