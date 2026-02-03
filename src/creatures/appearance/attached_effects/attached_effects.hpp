/**
 * The Wolf Project - A free and open-source MMORPG server emulator
 * Copyright (©) 2025-2026 The Wolf Project <jakub.polewka92@gmail.com>
 * Repository: https://wolf-project.org
 * License: https://wolf-project.org/license
 * Contributors: https://wolf-project.org/contributors
 * Website: https://wolf-project.org
 */

#pragma once

struct Aura {
	Aura(uint16_t initId, const std::string &name) :
		id(initId), name(name) { }
	uint16_t id;
	std::string name;
};

struct Shader {
	Shader(uint8_t initId, const std::string &name) :
		id(initId), name(name) { }
	uint8_t id;
	std::string name;
};

struct Effect {
	Effect(uint16_t initId, const std::string &name) :
		id(initId), name(name) { }
	uint16_t id;
	std::string name;
};

struct Wing {
	Wing(uint16_t initId, const std::string &name) :
		id(initId), name(name) { }
	uint16_t id;
	std::string name;
};

class AttachedEffects {
public:
	bool reload();
	bool loadFromXml();

	std::shared_ptr<Aura> getAuraByID(uint8_t id);
	std::shared_ptr<Effect> getEffectByID(uint8_t id);
	std::shared_ptr<Wing> getWingByID(uint8_t id);
	std::shared_ptr<Shader> getShaderByID(uint8_t id);

	std::shared_ptr<Aura> getAuraByName(const std::string &name);
	std::shared_ptr<Shader> getShaderByName(const std::string &name);
	std::shared_ptr<Effect> getEffectByName(const std::string &name);
	std::shared_ptr<Wing> getWingByName(const std::string &name);

	[[nodiscard]] const std::vector<std::shared_ptr<Aura>> &getAuras() const {
		return auras;
	}
	[[nodiscard]] const std::vector<std::shared_ptr<Shader>> &getShaders() const {
		return shaders;
	}
	[[nodiscard]] const std::vector<std::shared_ptr<Effect>> &getEffects() const {
		return effects;
	}
	[[nodiscard]] const std::vector<std::shared_ptr<Wing>> &getWings() const {
		return wings;
	}

private:
	std::vector<std::shared_ptr<Aura>> auras;
	std::vector<std::shared_ptr<Shader>> shaders;
	std::vector<std::shared_ptr<Effect>> effects;
	std::vector<std::shared_ptr<Wing>> wings;
};
