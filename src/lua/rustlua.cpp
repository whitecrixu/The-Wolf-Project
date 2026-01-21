/**
 * The Wolf Project - Rust Lua Integration
 * 
 * Implementation of the RustLua::Engine class.
 */

#include "otpch.h"
#include "rustlua.h"
#include "monsters.h"
#include <iostream>

extern Monsters g_monsters;

namespace RustLua {

// Callback: Called by Rust when a monster type is registered via Lua
bool onMonsterRegister(const CMonsterData* data) {
    if (!data || !data->name) {
        return false;
    }
    
    std::string name(data->name);
    
    // Add monster type to g_monsters
    MonsterType* mType = g_monsters.addMonsterType(name);
    if (!mType) {
        return false;
    }
    
    // Copy data from Rust to C++
    if (data->name_description) {
        mType->nameDescription = data->name_description;
    }
    
    mType->info.health = data->health;
    mType->info.healthMax = data->max_health;
    mType->info.experience = data->experience;
    mType->info.baseSpeed = data->base_speed;
    mType->info.race = static_cast<RaceType_t>(data->race);
    mType->info.skull = static_cast<Skulls_t>(data->skull);
    mType->info.lookcorpse = data->corpse_id;
    mType->info.manaCost = data->mana_cost;
    mType->info.light.level = data->light_level;
    mType->info.light.color = data->light_color;
    mType->info.staticAttackChance = data->static_attack_chance;
    mType->info.maxSummons = data->max_summons;
    mType->info.targetDistance = data->target_distance;
    mType->info.runAwayHealth = data->run_away_health;
    mType->info.defense = data->defense;
    mType->info.armor = data->armor;
    mType->info.yellChance = data->yell_chance;
    mType->info.yellSpeedTicks = data->yell_speed_ticks;
    mType->info.changeTargetChance = data->change_target_chance;
    mType->info.changeTargetSpeed = data->change_target_speed;
    
    // Flags
    mType->info.isSummonable = data->is_summonable;
    mType->info.isIllusionable = data->is_illusionable;
    mType->info.isConvinceable = data->is_convinceable;
    mType->info.isAttackable = data->is_attackable;
    mType->info.isHostile = data->is_hostile;
    mType->info.pushable = data->is_pushable;
    mType->info.canPushItems = data->can_push_items;
    mType->info.canPushCreatures = data->can_push_creatures;
    mType->info.hiddenHealth = data->hidden_health;
    mType->info.isBlockable = data->is_blockable;
    mType->info.isPassive = data->is_passive;
    mType->info.isRewardBoss = data->is_reward_boss;
    
    // Outfit
    mType->info.outfit.lookType = data->look_type;
    mType->info.outfit.lookTypeEx = data->look_type_ex;
    mType->info.outfit.lookHead = data->look_head;
    mType->info.outfit.lookBody = data->look_body;
    mType->info.outfit.lookLegs = data->look_legs;
    mType->info.outfit.lookFeet = data->look_feet;
    mType->info.outfit.lookAddons = data->look_addons;
    mType->info.outfit.lookMount = data->look_mount;
    
    return true;
}

bool onNpcRegister(const char* name, int32_t health) {
    // TODO: Implement NPC registration
    return true;
}

bool Engine::init() {
    if (state) {
        return true; // Already initialized
    }
    
    std::cout << "    [*] Initializing Rust Lua Engine..." << std::endl;
    state = wolf_lua_init();
    
    if (!state) {
        std::cerr << "    [!] Failed to initialize Rust Lua Engine!" << std::endl;
        return false;
    }
    
    // Register callbacks so Rust can register monsters/NPCs in C++
    registerMonsterCallback(onMonsterRegister);
    registerNpcCallback(onNpcRegister);
    
    std::cout << "    [*] Rust Lua: " << wolf_lua_version() << " [OK]" << std::endl;
    return true;
}

void Engine::destroy() {
    if (state) {
        wolf_lua_destroy(state);
        state = nullptr;
    }
}

bool Engine::loadScripts(const std::string& dataPath) {
    if (!state) {
        return false;
    }
    
    int result = wolf_lua_load_scripts(state, dataPath.c_str());
    return result == 0;
}

bool Engine::execute(const std::string& code) {
    if (!state) {
        return false;
    }
    
    int result = wolf_lua_exec(state, code.c_str());
    return result == 0;
}

bool Engine::callGlobal(const std::string& funcName, const std::string& args) {
    if (!state) {
        return false;
    }
    
    int result = wolf_lua_call_global(state, funcName.c_str(), args.c_str());
    return result == 0;
}

void Engine::registerMonsterCallback(MonsterRegisterCallback callback) {
    wolf_register_monster_callback(callback);
}

void Engine::registerNpcCallback(NpcRegisterCallback callback) {
    wolf_register_npc_callback(callback);}

} // namespace RustLua