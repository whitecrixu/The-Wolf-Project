/**
 * The Wolf Project - A free and open-source MMORPG server emulator
 * Copyright (©) 2025-2026 The Wolf Project <jakub.polewka92@gmail.com>
 * Repository: https://wolf-project.org
 * License: https://wolf-project.org/license
 * Contributors: https://wolf-project.org/contributors
 * Website: https://wolf-project.org
 */

#include <spdlog/spdlog.h>
#include "lib/di/container.hpp"

LogWithSpdLog::LogWithSpdLog() {
	setLevel("info");
	spdlog::set_pattern("[%Y-%d-%m %H:%M:%S.%e] [%^%l%$] %v ");

#ifdef DEBUG_LOG
	spdlog::set_pattern("[%Y-%d-%m %H:%M:%S.%e] [thread %t] [%^%l%$] %v ");
#endif
}

Logger &LogWithSpdLog::getInstance() {
	return inject<Logger>();
}

void LogWithSpdLog::setLevel(const std::string &name) const {
	debug("Setting log level to: {}.", name);
	const auto level = spdlog::level::from_str(name);
	spdlog::set_level(level);
}

std::string LogWithSpdLog::getLevel() const {
	const auto level = spdlog::level::to_string_view(spdlog::get_level());
	return std::string { level.begin(), level.end() };
}

void LogWithSpdLog::info(const std::string &msg) const {
	SPDLOG_INFO(msg);
}

void LogWithSpdLog::warn(const std::string &msg) const {
	SPDLOG_WARN(msg);
}

void LogWithSpdLog::error(const std::string &msg) const {
	SPDLOG_ERROR(msg);
}

void LogWithSpdLog::critical(const std::string &msg) const {
	SPDLOG_CRITICAL(msg);
}

#if defined(DEBUG_LOG)
void LogWithSpdLog::debug(const std::string &msg) const {
	SPDLOG_DEBUG(msg);
}

void LogWithSpdLog::trace(const std::string &msg) const {
	SPDLOG_TRACE(msg);
}
#endif
