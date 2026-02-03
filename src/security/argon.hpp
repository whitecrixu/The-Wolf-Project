/**
 * The Wolf Project - A free and open-source MMORPG server emulator
 * Copyright (©) 2025-2026 The Wolf Project <jakub.polewka92@gmail.com>
 * Repository: https://wolf-project.org
 * License: https://wolf-project.org/license
 * Contributors: https://wolf-project.org/contributors
 * Website: https://wolf-project.org
 */

#pragma once

class Argon2 {
public:
	Argon2();
	~Argon2() = default;

	void updateConstants();

	// Singleton - ensures we don't accidentally copy it
	Argon2(const Argon2 &) = delete;
	void operator=(const Argon2 &) = delete;

	bool argon(const std::string &password_attempt, const std::string &hashed_password) const;

private:
	uint32_t parseBitShift(const std::string &bitShiftStr) const;
	bool verifyPassword(const std::string &password, const std::string &phash) const;
	static std::vector<uint8_t> base64_decode(const std::string &input);

	static const std::regex re;
	static const std::string base64_chars;
	std::string m_const_str;
	uint32_t m_cost {};
	uint32_t t_cost {};
	uint32_t parallelism {};
};
