/**
 * The Wolf Project - A free and open-source MMORPG server emulator
 * Copyright (©) 2025-2026 The Wolf Project
 * Repository: https://wolf-project.org
 * License: https://wolf-project.org/license
 * Contributors: https://wolf-project.org/contributors
 * Website: https://wolf-project.org
 */
 * Repository: https://wolf-project.org
 * License: https://wolf-project.org/license
 * Contributors: https://wolf-project.org/contributors
 * Website: https://wolf-project.org
 */
#include "pch.hpp"

#include <boost/ut.hpp>

#include "lib/logging/in_memory_logger.hpp"
#include "security/rsa.hpp"

using namespace boost::ut;

suite<"security"> rsaTest = [] {
	test("RSA::start logs error for missing .pem file") = [] {
		di::extension::injector<> injector {};
		DI::setTestContainer(&InMemoryLogger::install(injector));

		DI::create<RSA &>().start();

		auto &logger = dynamic_cast<InMemoryLogger &>(injector.create<Logger &>());

		expect(eq(1, logger.logs.size()) >> fatal);
		expect(
			eq(std::string { "error" }, logger.logs[0].level) and eq(std::string { "File key.pem not found or have problem on loading... Setting standard rsa key\n" }, logger.logs[0].message)
		);
	};
};
