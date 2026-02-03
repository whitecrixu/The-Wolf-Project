/**
 * The Wolf Project - A free and open-source MMORPG server emulator
 * Copyright (©) 2025-2026 The Wolf Project <jakub.polewka92@gmail.com>
 * Repository: https://wolf-project.org
 * License: https://wolf-project.org/license
 * Contributors: https://wolf-project.org/contributors
 * Website: https://wolf-project.org
 */
#pragma once

#include <vector>
#include <string>
#include <utility>

#include "kv/kv.hpp"

#include "test_injection.hpp"
#include "lib/di/container.hpp"

namespace di = boost::di;

class KVMemory final : public KVStore {
public:
	static di::extension::injector<> &install(di::extension::injector<> &injector) {
		injector.install(di::bind<KVStore>.to<KVMemory>().in(di::singleton));
		return injector;
	}

	explicit KVMemory(Logger &logger) :
		KVStore(logger) { }

	KVMemory &reset() {
		flush();
		return *this;
	}

protected:
	std::vector<std::string> loadPrefix(const std::string &prefix = "") override {
		return {};
	}
	std::optional<ValueWrapper> load(const std::string &key) override {
		return std::nullopt;
	}
	bool save(const std::string &key, const ValueWrapper &value) override {
		return false;
	}
};

template <>
struct TestInjection<KVStore> {
	using type = KVMemory;
};
