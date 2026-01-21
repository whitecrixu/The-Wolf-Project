//! FFI Callbacks - allows C++ to register callbacks for Rust to call.
//!
//! This enables Rust Lua scripts to register monsters, NPCs, spells, etc.
//! in C++ data structures.

use std::ffi::{CStr, CString};
use std::os::raw::c_char;
use std::sync::Mutex;

pub use wolf_lua::bridge::MonsterData;
pub use wolf_lua::bridge::NpcData;

/// C-compatible monster registration data
#[repr(C)]
pub struct CMonsterData {
    pub name: *const c_char,
    pub name_description: *const c_char,
    pub health: i32,
    pub max_health: i32,
    pub experience: u64,
    pub speed: u32,
    pub race: u8,
    pub skull: u8,
    pub corpse_id: u16,
    pub mana_cost: u32,
    pub base_speed: u32,
    pub light_level: u8,
    pub light_color: u8,
    pub static_attack_chance: u32,
    pub max_summons: u32,
    pub target_distance: i32,
    pub run_away_health: i32,
    pub defense: i32,
    pub armor: i32,
    pub yell_chance: u32,
    pub yell_speed_ticks: u32,
    pub change_target_chance: i32,
    pub change_target_speed: u32,
    // Flags
    pub is_summonable: bool,
    pub is_illusionable: bool,
    pub is_convinceable: bool,
    pub is_attackable: bool,
    pub is_hostile: bool,
    pub is_pushable: bool,
    pub can_push_items: bool,
    pub can_push_creatures: bool,
    pub hidden_health: bool,
    pub is_blockable: bool,
    pub is_passive: bool,
    pub is_reward_boss: bool,
    // Outfit
    pub look_type: u16,
    pub look_type_ex: u16,
    pub look_head: u8,
    pub look_body: u8,
    pub look_legs: u8,
    pub look_feet: u8,
    pub look_addons: u8,
    pub look_mount: u16,
}

/// Callback function types (C ABI)
pub type MonsterRegisterCallback = extern "C" fn(*const CMonsterData) -> bool;
pub type NpcRegisterCallback = extern "C" fn(*const c_char, i32) -> bool;

/// Global C++ callback storage
struct CppCallbacks {
    on_monster_register: Option<MonsterRegisterCallback>,
    on_npc_register: Option<NpcRegisterCallback>,
}

lazy_static::lazy_static! {
    static ref CPP_CALLBACKS: Mutex<CppCallbacks> = Mutex::new(CppCallbacks {
        on_monster_register: None,
        on_npc_register: None,
    });
}

/// Register C++ callback for monster registration
#[no_mangle]
pub extern "C" fn wolf_register_monster_callback(callback: MonsterRegisterCallback) {
    if let Ok(mut cbs) = CPP_CALLBACKS.lock() {
        cbs.on_monster_register = Some(callback);
    }
    
    // Also wire up the wolf-lua bridge to call our FFI callback
    wolf_lua::set_monster_callback(|data: &MonsterData| {
        call_cpp_monster_callback(data)
    });
}

/// Register C++ callback for NPC registration
#[no_mangle]
pub extern "C" fn wolf_register_npc_callback(callback: NpcRegisterCallback) {
    if let Ok(mut cbs) = CPP_CALLBACKS.lock() {
        cbs.on_npc_register = Some(callback);
    }
}

/// Internal function to call C++ callback with converted data
fn call_cpp_monster_callback(data: &MonsterData) -> bool {
    let name_c = CString::new(data.name.as_str()).unwrap_or_default();
    let desc_c = CString::new(data.name_description.as_str()).unwrap_or_default();
    
    // Get pointers BEFORE creating CMonsterData, and keep CStrings alive
    let name_ptr = name_c.as_ptr();
    let desc_ptr = desc_c.as_ptr();
    
    let c_data = CMonsterData {
        name: name_ptr,
        name_description: desc_ptr,
        health: data.health,
        max_health: data.max_health,
        experience: data.experience,
        speed: data.speed,
        race: data.race,
        skull: data.skull,
        corpse_id: data.corpse_id,
        mana_cost: data.mana_cost,
        base_speed: data.base_speed,
        light_level: data.light_level,
        light_color: data.light_color,
        static_attack_chance: data.static_attack_chance,
        max_summons: data.max_summons,
        target_distance: data.target_distance,
        run_away_health: data.run_away_health,
        defense: data.defense,
        armor: data.armor,
        yell_chance: data.yell_chance,
        yell_speed_ticks: data.yell_speed_ticks,
        change_target_chance: data.change_target_chance,
        change_target_speed: data.change_target_speed,
        is_summonable: data.is_summonable,
        is_illusionable: data.is_illusionable,
        is_convinceable: data.is_convinceable,
        is_attackable: data.is_attackable,
        is_hostile: data.is_hostile,
        is_pushable: data.is_pushable,
        can_push_items: data.can_push_items,
        can_push_creatures: data.can_push_creatures,
        hidden_health: data.hidden_health,
        is_blockable: data.is_blockable,
        is_passive: data.is_passive,
        is_reward_boss: data.is_reward_boss,
        look_type: data.look_type,
        look_type_ex: data.look_type_ex,
        look_head: data.look_head,
        look_body: data.look_body,
        look_legs: data.look_legs,
        look_feet: data.look_feet,
        look_addons: data.look_addons,
        look_mount: data.look_mount,
    };
    
    // CStrings are still alive here - call the callback now
    if let Ok(cbs) = CPP_CALLBACKS.lock() {
        if let Some(callback) = cbs.on_monster_register {
            return callback(&c_data);
        }
    }
    
    // name_c and desc_c are dropped here, after callback returns
    true // Default success if no callback
}

