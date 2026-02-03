/**
 * The Wolf Project - A free and open-source MMORPG server emulator
 * Copyright (©) 2025-2026 The Wolf Project <jakub.polewka92@gmail.com>
 * Repository: https://wolf-project.org
 * License: https://wolf-project.org/license
 * Contributors: https://wolf-project.org/contributors
 * Website: https://wolf-project.org
 */

#pragma once

namespace pugi {
	void logError(const std::string &str);

	template <typename T>
	// NOTE: std::clamp returns the minimum value if the value is less than the specified minimum value, the maximum value if the value is greater than the specified maximum value, or the value itself if it falls within the range
	T cast(const pugi::char_t* str) {
		// Initialize value to return
		T value;

		// Set the last character to parse
		const std::string_view string(str);
		const auto last = str + string.size();

		// Convert the string to the specified type
		const auto [pointer, errorCode] = std::from_chars(str, last, value);
		// If the conversion was successful and all characters were parsed
		if (errorCode == std::errc {} && pointer == last) {
			// Ensure that the converted value is within the valid range for the type
			value = std::clamp(
				value,
				std::numeric_limits<T>::lowest(),
				std::numeric_limits<T>::max()
			);
			return value;
		}

		// If the string could not be parsed as the specified type
		if (errorCode == std::errc::invalid_argument) {
			// Throw an exception indicating that the argument is invalid
			logError(fmt::format("[{}] Invalid argument {}", __FUNCTION__, str));
		}
		// If the parsed value is out of range for the specified type
		else if (errorCode == std::errc::result_out_of_range) {
			// Throw an exception indicating that the result is out of range
			logError(fmt::format("[{}] Result out of range: {}", __FUNCTION__, str));
		}

		// Return a default value if no exception is thrown
		return T {};
	}
}
