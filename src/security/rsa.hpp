/**
 * The Wolf Project - A free and open-source MMORPG server emulator
 * Copyright (©) 2025-2026 The Wolf Project <jakub.polewka92@gmail.com>
 * Repository: https://wolf-project.org
 * License: https://wolf-project.org/license
 * Contributors: https://wolf-project.org/contributors
 * Website: https://wolf-project.org
 */

#pragma once

class Logger;

class RSA {
public:
	explicit RSA(Logger &logger);
	~RSA();

	// Singleton - ensures we don't accidentally copy it
	RSA(RSA const &) = delete;
	void operator=(RSA const &) = delete;

	static RSA &getInstance();

	void start();

	void setKey(const char* pString, const char* qString, int base = 10);
	void decrypt(char* msg) const;

	std::string base64Decrypt(const std::string &input) const;
	uint16_t decodeLength(char*&pos) const;
	void readHexString(char*&pos, uint16_t length, std::string &output) const;
	bool loadPEM(const std::string &filename);

private:
	Logger &logger;
	mpz_t n {};
	mpz_t d {};
};

constexpr auto g_RSA = RSA::getInstance;
