/**
 * The Wolf Project - A free and open-source MMORPG server emulator
 * Copyright (©) 2025-2026 The Wolf Project <jakub.polewka92@gmail.com>
 * Repository: https://wolf-project.org
 * License: https://wolf-project.org/license
 * Contributors: https://wolf-project.org/contributors
 * Website: https://wolf-project.org
 */

#include "kv/value_wrapper.hpp"

#include "utils/tools.hpp"

ValueWrapper::ValueWrapper(uint64_t timestamp) :
	timestamp_(timestamp == 0 ? getTimeMsNow() : timestamp) { }

ValueWrapper::ValueWrapper(ValueVariant value, uint64_t timestamp) :
	data_(std::move(value)), timestamp_(timestamp == 0 ? getTimeMsNow() : timestamp) { }

ValueWrapper::ValueWrapper(const std::string &value, uint64_t timestamp) :
	data_(value), timestamp_(timestamp == 0 ? getTimeMsNow() : timestamp) { }

ValueWrapper::ValueWrapper(bool value, uint64_t timestamp) :
	data_(value), timestamp_(timestamp == 0 ? getTimeMsNow() : timestamp) { }

ValueWrapper::ValueWrapper(int value, uint64_t timestamp) :
	data_(value), timestamp_(timestamp == 0 ? getTimeMsNow() : timestamp) { }

ValueWrapper::ValueWrapper(double value, uint64_t timestamp) :
	data_(value), timestamp_(timestamp == 0 ? getTimeMsNow() : timestamp) { }

ValueWrapper::ValueWrapper(const phmap::flat_hash_map<std::string, ValueWrapper> &value, uint64_t timestamp) :
	data_(createMapFromRange(value.begin(), value.end(), timestamp)),
	timestamp_(timestamp == 0 ? getTimeMsNow() : timestamp) { }

ValueWrapper::ValueWrapper(const std::initializer_list<std::pair<const std::string, ValueWrapper>> &init_list, uint64_t timestamp) :
	data_(createMapFromRange(init_list.begin(), init_list.end(), timestamp)),
	timestamp_(timestamp == 0 ? getTimeMsNow() : timestamp) { }

std::optional<ValueWrapper> ValueWrapper::get(const std::string &key) const {
	const auto pval = std::get_if<MapType>(&data_);
	if (!pval) {
		return std::nullopt;
	}

	if (!pval->contains(key)) {
		return std::nullopt;
	}

	const auto &[_, valuePtr] = *pval->find(key);
	if (!valuePtr) {
		return std::nullopt;
	}

	return *valuePtr;
}

std::optional<ValueWrapper> ValueWrapper::get(size_t index) const {
	if (const auto pval = std::get_if<ArrayType>(&data_)) {
		if (index < pval->size()) {
			return (*pval)[index];
		}
	}
	return std::nullopt;
}
