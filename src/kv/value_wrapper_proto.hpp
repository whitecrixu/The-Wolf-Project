/**
 * The Wolf Project - A free and open-source MMORPG server emulator
 * Copyright (©) 2025-2026 The Wolf Project <jakub.polewka92@gmail.com>
 * Repository: https://wolf-project.org
 * License: https://wolf-project.org/license
 * Contributors: https://wolf-project.org/contributors
 * Website: https://wolf-project.org
 */

#pragma once

class ValueWrapper;

using StringType = std::string;
using BooleanType = bool;
using IntType = int;
using DoubleType = double;
using ArrayType = std::vector<ValueWrapper>;
using MapType = phmap::flat_hash_map<std::string, std::shared_ptr<ValueWrapper>>;

using ValueVariant = std::variant<StringType, BooleanType, IntType, DoubleType, ArrayType, MapType>;

// Forward declaration for protobuf class
namespace Wolf::protobuf::kv {
	class ValueWrapper;
}

struct ProtoSerializable {
	static Wolf::protobuf::kv::ValueWrapper toProto(const ValueWrapper &obj);
	static ValueWrapper fromProto(const Wolf::protobuf::kv::ValueWrapper &protoValue, uint64_t timestamp);
};

namespace ProtoHelpers {
	void setProtoStringValue(Wolf::protobuf::kv::ValueWrapper &protoValue, const StringType &arg);
	void setProtoBooleanValue(Wolf::protobuf::kv::ValueWrapper &protoValue, const BooleanType &arg);
	void setProtoIntValue(Wolf::protobuf::kv::ValueWrapper &protoValue, const IntType &arg);
	void setProtoDoubleValue(Wolf::protobuf::kv::ValueWrapper &protoValue, const DoubleType &arg);
	void setProtoArrayValue(Wolf::protobuf::kv::ValueWrapper &protoValue, const ArrayType &arg);
	void setProtoMapValue(Wolf::protobuf::kv::ValueWrapper &protoValue, const MapType &arg);
}
