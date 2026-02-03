/**
 * The Wolf Project - A free and open-source MMORPG server emulator
 * Copyright (©) 2025-2026 The Wolf Project <jakub.polewka92@gmail.com>
 * Repository: https://wolf-project.org
 * License: https://wolf-project.org/license
 * Contributors: https://wolf-project.org/contributors
 * Website: https://wolf-project.org
 */
#pragma once

#include "lib/logging/logger.hpp"

class LogWithSpdLog final : public Logger {
public:
	LogWithSpdLog();
	~LogWithSpdLog() override = default;

	static Logger &getInstance();

	void setLevel(const std::string &name) const override;
	std::string getLevel() const override;

	void info(const std::string &msg) const override;
	void warn(const std::string &msg) const override;
	void error(const std::string &msg) const override;
	void critical(const std::string &msg) const override;

#if defined(DEBUG_LOG)
	void debug(const std::string &msg) const override;
	void trace(const std::string &msg) const override;

	template <typename... Args>
	void debug(const fmt::format_string<Args...> &fmt, Args &&... args) const {
		debug(fmt::format(fmt, std::forward<Args>(args)...));
	}

	template <typename... Args>
	void trace(const fmt::format_string<Args...> &fmt, Args &&... args) const {
		trace(fmt::format(fmt, std::forward<Args>(args)...));
	}
#else
	void debug(const std::string &) const override { }
	void trace(const std::string &) const override { }

	template <typename... Args>
	void debug(const fmt::format_string<Args...> &, Args &&...) const { }

	template <typename... Args>
	void trace(const fmt::format_string<Args...> &, Args &&...) const { }
#endif
};

constexpr auto g_logger = LogWithSpdLog::getInstance;
