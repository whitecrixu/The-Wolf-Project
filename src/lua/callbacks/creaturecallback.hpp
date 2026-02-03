/**
 * The Wolf Project - A free and open-source MMORPG server emulator
 * Copyright (©) 2025-2026 The Wolf Project <jakub.polewka92@gmail.com>
 * Repository: https://wolf-project.org
 * License: https://wolf-project.org/license
 * Contributors: https://wolf-project.org/contributors
 * Website: https://wolf-project.org
 */

#pragma once

class Creature;
class LuaScriptInterface;

struct Position;

class CreatureCallback {
public:
	CreatureCallback(LuaScriptInterface* scriptInterface, const std::shared_ptr<Creature> &targetCreature) :
		scriptInterface(scriptInterface), m_targetCreature(targetCreature) {};
	~CreatureCallback() = default;

	bool startScriptInterface(int32_t scriptId);

	void pushSpecificCreature(const std::shared_ptr<Creature> &creature);

	bool persistLuaState() const;

	void pushCreature(const std::shared_ptr<Creature> &creature);

	void pushPosition(const Position &position, int32_t stackpos = 0);

	void pushNumber(int32_t number);

	void pushString(const std::string &str);

	void pushBoolean(const bool str);

protected:
	static std::string getCreatureClass(const std::shared_ptr<Creature> &creature);

private:
	LuaScriptInterface* scriptInterface;
	std::weak_ptr<Creature> m_targetCreature;
	uint32_t params = 0;
	lua_State* L = nullptr;
};
