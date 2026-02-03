/**
 * The Wolf Project - A free and open-source MMORPG server emulator
 * Copyright (©) 2025-2026 The Wolf Project <jakub.polewka92@gmail.com>
 * Repository: https://wolf-project.org
 * License: https://wolf-project.org/license
 * Contributors: https://wolf-project.org/contributors
 * Website: https://wolf-project.org
 */

#pragma once

#include "security/rsa.hpp"
#include "server/server.hpp"

class Logger;

class FailedToInitializeWolf : public std::exception {
private:
	std::string message;

public:
	// Constructor accepts a specific message
	explicit FailedToInitializeWolf(const std::string &msg) :
		message("Wolf load couldn't be completed. " + msg) { }

	// Override the what() method from std::exception
	const char* what() const noexcept override {
		return message.c_str();
	}
};

class WolfServer {
public:
	explicit WolfServer(
		Logger &logger,
		RSA &rsa,
		ServiceManager &serviceManager
	);

	int run();

private:
	enum class LoaderStatus : uint8_t {
		LOADING,
		LOADED,
		FAILED
	};

	Logger &logger;
	RSA &rsa;
	ServiceManager &serviceManager;

	LoaderStatus loaderStatus = LoaderStatus::LOADING;
	std::mutex loaderMutex;
	std::condition_variable loaderCV;

	void logInfos();
	static void toggleForceCloseButton();
	static void badAllocationHandler();
	static void shutdown();

	static std::string getCompiler();
	static std::string getPlatform();

	void loadConfigLua();
	void validateDatapack();
	void initializeDatabase();
	void loadModules();
	void setWorldType();
	void loadMaps() const;
	void setupHousesRent();
	void modulesLoadHelper(bool loaded, std::string moduleName, int percent = 0);
};
