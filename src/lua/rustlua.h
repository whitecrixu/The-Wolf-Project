/**
 * The Wolf Project - Rust Lua Integration
 * 
 * This header provides integration between the C++ server and the Rust Lua engine.
 * It wraps the wolf_ffi library functions for use in the existing LuaScriptInterface.
 */

#ifndef RUST_LUA_H
#define RUST_LUA_H

#include <string>
#include <cstdint>

// C-compatible monster data structure (matches Rust CMonsterData)
struct CMonsterData {
    const char* name;
    const char* name_description;
    int32_t health;
    int32_t max_health;
    uint64_t experience;
    uint32_t speed;
    uint8_t race;
    uint8_t skull;
    uint16_t corpse_id;
    uint32_t mana_cost;
    uint32_t base_speed;
    uint8_t light_level;
    uint8_t light_color;
    uint32_t static_attack_chance;
    uint32_t max_summons;
    int32_t target_distance;
    int32_t run_away_health;
    int32_t defense;
    int32_t armor;
    uint32_t yell_chance;
    uint32_t yell_speed_ticks;
    int32_t change_target_chance;
    uint32_t change_target_speed;
    // Flags
    bool is_summonable;
    bool is_illusionable;
    bool is_convinceable;
    bool is_attackable;
    bool is_hostile;
    bool is_pushable;
    bool can_push_items;
    bool can_push_creatures;
    bool hidden_health;
    bool is_blockable;
    bool is_passive;
    bool is_reward_boss;
    // Outfit
    uint16_t look_type;
    uint16_t look_type_ex;
    uint8_t look_head;
    uint8_t look_body;
    uint8_t look_legs;
    uint8_t look_feet;
    uint8_t look_addons;
    uint16_t look_mount;
};

// Callback function types
typedef bool (*MonsterRegisterCallback)(const CMonsterData*);
typedef bool (*NpcRegisterCallback)(const char*, int32_t);

// Forward declaration
extern "C" {
    // From libwolf_ffi.so
    void* wolf_lua_init();
    void wolf_lua_destroy(void* state);
    int wolf_lua_load_scripts(void* state, const char* data_path);
    int wolf_lua_exec(void* state, const char* code);
    int wolf_lua_call_global(void* state, const char* func_name, const char* args);
    const char* wolf_lua_version();
    
    // Callback registration
    void wolf_register_monster_callback(MonsterRegisterCallback callback);
    void wolf_register_npc_callback(NpcRegisterCallback callback);
}

namespace RustLua {

class Engine {
public:
    static Engine& getInstance() {
        static Engine instance;
        return instance;
    }
    
    bool init();
    void destroy();
    bool loadScripts(const std::string& dataPath);
    bool execute(const std::string& code);
    bool callGlobal(const std::string& funcName, const std::string& args = "");
    
    // Callback registration
    void registerMonsterCallback(MonsterRegisterCallback callback);
    void registerNpcCallback(NpcRegisterCallback callback);
    
    bool isInitialized() const { return state != nullptr; }
    const char* version() const { return wolf_lua_version(); }
    
private:
    Engine() : state(nullptr) {}
    ~Engine() { destroy(); }
    
    Engine(const Engine&) = delete;
    Engine& operator=(const Engine&) = delete;
    
    void* state;
};

// Global callbacks that bridge to C++ game systems
bool onMonsterRegister(const CMonsterData* data);
bool onNpcRegister(const char* name, int32_t health);
} // namespace RustLua

#endif // RUST_LUA_H