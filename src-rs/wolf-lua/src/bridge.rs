//! Bridge callbacks - allows FFI layer to inject callbacks into wolf-lua
//!
//! This module provides a way for the FFI layer to register callbacks
//! that get invoked when Lua scripts register monsters, NPCs, etc.

use std::ffi::CString;
use std::os::raw::c_char;
use std::sync::Mutex;

/// Monster type data for registration callback
#[derive(Debug, Clone, Default)]
pub struct MonsterData {
    pub name: String,
    pub name_description: String,
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

/// NPC type data for registration callback
#[derive(Debug, Clone, Default)]
pub struct NpcData {
    pub name: String,
    pub name_description: String,
    pub health: i32,
    pub max_health: i32,
    pub speed: u32,
    pub look_type: u16,
}

/// Callback function pointers (C ABI compatible)
pub type MonsterRegisterFn = extern "C" fn(*const c_char, i32, i32, u64, u32) -> bool;
pub type NpcRegisterFn = extern "C" fn(*const c_char, i32) -> bool;

/// Global bridge callbacks
pub struct BridgeCallbacks {
    pub on_monster_register: Option<Box<dyn Fn(&MonsterData) -> bool + Send + Sync>>,
    pub on_npc_register: Option<Box<dyn Fn(&NpcData) -> bool + Send + Sync>>,
}

impl Default for BridgeCallbacks {
    fn default() -> Self {
        Self {
            on_monster_register: None,
            on_npc_register: None,
        }
    }
}

lazy_static::lazy_static! {
    static ref BRIDGE: Mutex<BridgeCallbacks> = Mutex::new(BridgeCallbacks::default());
}

/// Set the monster registration callback
pub fn set_monster_callback<F>(callback: F)
where
    F: Fn(&MonsterData) -> bool + Send + Sync + 'static,
{
    if let Ok(mut bridge) = BRIDGE.lock() {
        bridge.on_monster_register = Some(Box::new(callback));
    }
}

/// Set the NPC registration callback
pub fn set_npc_callback<F>(callback: F)
where
    F: Fn(&NpcData) -> bool + Send + Sync + 'static,
{
    if let Ok(mut bridge) = BRIDGE.lock() {
        bridge.on_npc_register = Some(Box::new(callback));
    }
}

/// Notify that a monster was registered (called by LuaMonsterType)
pub fn notify_monster_registered(data: &MonsterData) -> bool {
    if let Ok(bridge) = BRIDGE.lock() {
        if let Some(ref callback) = bridge.on_monster_register {
            return callback(data);
        }
    }
    // Return true even if no callback - don't block script loading
    true
}

/// Notify that an NPC was registered (called by LuaNpcType)
pub fn notify_npc_registered(data: &NpcData) -> bool {
    if let Ok(bridge) = BRIDGE.lock() {
        if let Some(ref callback) = bridge.on_npc_register {
            return callback(data);
        }
    }
    true
}
