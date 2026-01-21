//! Global Lua functions registration.
//!
//! This module registers all global functions available in Lua scripts,
//! matching the original TFS API.

use mlua::{Function, Lua, Result as LuaResult, Table, Value, Variadic};
use tracing::debug;

/// Register all global functions.
pub fn register_globals(lua: &Lua) -> LuaResult<()> {
    let globals = lua.globals();

    // ========================================================================
    // Utility functions
    // ========================================================================
    
    globals.set("isInArray", lua.create_function(lua_is_in_array)?)?;
    globals.set("isType", lua.create_function(lua_is_type)?)?;
    globals.set("rawgetmetatable", lua.create_function(lua_rawgetmetatable)?)?;
    globals.set("debugPrint", lua.create_function(lua_debug_print)?)?;

    // ========================================================================
    // Event system
    // ========================================================================
    
    globals.set("addEvent", lua.create_function(lua_add_event)?)?;
    globals.set("stopEvent", lua.create_function(lua_stop_event)?)?;

    // ========================================================================
    // World functions
    // ========================================================================
    
    globals.set("getWorldTime", lua.create_function(lua_get_world_time)?)?;
    globals.set("getWorldLight", lua.create_function(lua_get_world_light)?)?;
    globals.set("getWorldUpTime", lua.create_function(lua_get_world_uptime)?)?;
    globals.set("saveServer", lua.create_function(lua_save_server)?)?;
    globals.set("cleanMap", lua.create_function(lua_clean_map)?)?;

    // ========================================================================
    // Player lookup functions
    // ========================================================================
    
    globals.set("getPlayerFlagValue", lua.create_function(lua_get_player_flag_value)?)?;
    globals.set("getPlayerInstantSpellCount", lua.create_function(lua_get_player_instant_spell_count)?)?;
    globals.set("getPlayerInstantSpellInfo", lua.create_function(lua_get_player_instant_spell_info)?)?;

    // ========================================================================
    // Item creation functions
    // ========================================================================
    
    globals.set("doPlayerAddItem", lua.create_function(lua_do_player_add_item)?)?;
    globals.set("doCreateItem", lua.create_function(lua_do_create_item)?)?;
    globals.set("doCreateItemEx", lua.create_function(lua_do_create_item_ex)?)?;
    globals.set("doTileAddItemEx", lua.create_function(lua_do_tile_add_item_ex)?)?;
    globals.set("doAddContainerItem", lua.create_function(lua_do_add_container_item)?)?;

    // ========================================================================
    // UID validation
    // ========================================================================
    
    globals.set("isValidUID", lua.create_function(lua_is_valid_uid)?)?;
    globals.set("isDepot", lua.create_function(lua_is_depot)?)?;
    globals.set("isMovable", lua.create_function(lua_is_movable)?)?;
    globals.set("getDepotId", lua.create_function(lua_get_depot_id)?)?;

    // ========================================================================
    // Combat functions
    // ========================================================================
    
    globals.set("createCombatArea", lua.create_function(lua_create_combat_area)?)?;
    globals.set("doAreaCombatHealth", lua.create_function(lua_do_area_combat_health)?)?;
    globals.set("doTargetCombatHealth", lua.create_function(lua_do_target_combat_health)?)?;
    globals.set("doAreaCombatMana", lua.create_function(lua_do_area_combat_mana)?)?;
    globals.set("doTargetCombatMana", lua.create_function(lua_do_target_combat_mana)?)?;
    globals.set("doAreaCombatCondition", lua.create_function(lua_do_area_combat_condition)?)?;
    globals.set("doTargetCombatCondition", lua.create_function(lua_do_target_combat_condition)?)?;
    globals.set("doAreaCombatDispel", lua.create_function(lua_do_area_combat_dispel)?)?;
    globals.set("doTargetCombatDispel", lua.create_function(lua_do_target_combat_dispel)?)?;
    globals.set("doChallengeCreature", lua.create_function(lua_do_challenge_creature)?)?;

    // ========================================================================
    // Creature functions
    // ========================================================================
    
    globals.set("doMoveCreature", lua.create_function(lua_do_move_creature)?)?;
    globals.set("doSetCreatureLight", lua.create_function(lua_do_set_creature_light)?)?;
    globals.set("doSetCreatureOutfit", lua.create_function(lua_do_set_creature_outfit)?)?;
    globals.set("doSetMonsterOutfit", lua.create_function(lua_do_set_monster_outfit)?)?;
    globals.set("doSetItemOutfit", lua.create_function(lua_do_set_item_outfit)?)?;
    globals.set("getCreatureCondition", lua.create_function(lua_get_creature_condition)?)?;

    // ========================================================================
    // Channel/messaging functions
    // ========================================================================
    
    globals.set("sendChannelMessage", lua.create_function(lua_send_channel_message)?)?;
    globals.set("sendGuildChannelMessage", lua.create_function(lua_send_guild_channel_message)?)?;

    // ========================================================================
    // Misc functions
    // ========================================================================
    
    globals.set("isInWar", lua.create_function(lua_is_in_war)?)?;
    globals.set("getWaypointPositionByName", lua.create_function(lua_get_waypoint_position_by_name)?)?;

    // ========================================================================
    // bit library (if not using LuaJIT's built-in)
    // ========================================================================
    
    register_bit_library(lua)?;

    // ========================================================================
    // configManager table
    // ========================================================================
    
    register_config_manager(lua)?;

    // ========================================================================
    // db table
    // ========================================================================
    
    register_db(lua)?;

    // ========================================================================
    // result table (for db queries)
    // ========================================================================
    
    register_result(lua)?;

    // ========================================================================
    // os extensions
    // ========================================================================
    
    let os_table: Table = globals.get("os")?;
    os_table.set("mtime", lua.create_function(lua_os_mtime)?)?;

    // ========================================================================
    // table extensions
    // ========================================================================
    
    let table_lib: Table = globals.get("table")?;
    table_lib.set("create", lua.create_function(lua_table_create)?)?;

    debug!("Registered all global Lua functions");
    Ok(())
}

// ============================================================================
// Utility function implementations (stubs)
// ============================================================================

fn lua_is_in_array(_lua: &Lua, (array, value): (Table, Value)) -> LuaResult<bool> {
    for pair in array.pairs::<Value, Value>() {
        let (_, v) = pair?;
        // Simple equality check
        if format!("{:?}", v) == format!("{:?}", value) {
            return Ok(true);
        }
    }
    Ok(false)
}

fn lua_is_type(_lua: &Lua, (value, type_name): (Value, String)) -> LuaResult<bool> {
    // Stub: check if value has the expected metatable
    match value {
        Value::UserData(ud) => {
            if let Ok(mt) = ud.metatable() {
                if let Ok(name) = mt.get::<String>("__name") {
                    return Ok(name == type_name);
                }
            }
            Ok(false)
        }
        _ => Ok(false),
    }
}

fn lua_rawgetmetatable(lua: &Lua, value: Value) -> LuaResult<Value> {
    match value {
        Value::Table(t) => Ok(t.metatable().map(Value::Table).unwrap_or(Value::Nil)),
        Value::UserData(_ud) => {
            // UserData metatables are internal - convert to table representation
            // For now return Nil as we use class metatables for extension
            Ok(Value::Nil)
        },
        Value::String(class_name) => {
            // Lookup class metatable by name (for compat.lua compatibility)
            use crate::class_registry::get_class_metatable;
            let s = class_name.to_string_lossy();
            if let Ok(Some(mt)) = get_class_metatable(lua, &s) {
                return Ok(Value::Table(mt));
            }
            Ok(Value::Nil)
        },
        _ => Ok(Value::Nil),
    }
}

fn lua_debug_print(_lua: &Lua, args: Variadic<String>) -> LuaResult<()> {
    let message = args.into_iter().collect::<Vec<_>>().join("\t");
    tracing::debug!(target: "lua", "{}", message);
    Ok(())
}

// ============================================================================
// Event system (stubs)
// ============================================================================

fn lua_add_event(lua: &Lua, (delay, callback, args): (u32, Function, Variadic<Value>)) -> LuaResult<u32> {
    // Stub: In a real implementation, this would schedule an event
    debug!("addEvent called with delay={}ms", delay);
    // Return a fake event ID
    Ok(1)
}

fn lua_stop_event(_lua: &Lua, event_id: u32) -> LuaResult<bool> {
    debug!("stopEvent called with id={}", event_id);
    Ok(true)
}

// ============================================================================
// World functions (stubs)
// ============================================================================

fn lua_get_world_time(_lua: &Lua, _: ()) -> LuaResult<u32> {
    // Stub: return game time (minutes since midnight in-game)
    Ok(720) // Noon
}

fn lua_get_world_light(lua: &Lua, _: ()) -> LuaResult<Table> {
    let light = lua.create_table()?;
    light.set("level", 250u8)?;
    light.set("color", 215u8)?;
    Ok(light)
}

fn lua_get_world_uptime(_lua: &Lua, _: ()) -> LuaResult<u64> {
    // Stub: return server uptime in seconds
    Ok(3600)
}

fn lua_save_server(_lua: &Lua, _: ()) -> LuaResult<bool> {
    debug!("saveServer called");
    Ok(true)
}

fn lua_clean_map(_lua: &Lua, _: ()) -> LuaResult<u32> {
    debug!("cleanMap called");
    Ok(0) // Items cleaned
}

// ============================================================================
// Player functions (stubs)
// ============================================================================

fn lua_get_player_flag_value(_lua: &Lua, (player_id, flag): (u32, u64)) -> LuaResult<bool> {
    debug!("getPlayerFlagValue called for player {} flag {}", player_id, flag);
    Ok(false)
}

fn lua_get_player_instant_spell_count(_lua: &Lua, player_id: u32) -> LuaResult<u32> {
    debug!("getPlayerInstantSpellCount called for player {}", player_id);
    Ok(0)
}

fn lua_get_player_instant_spell_info(lua: &Lua, (player_id, index): (u32, u32)) -> LuaResult<Value> {
    debug!("getPlayerInstantSpellInfo called for player {} index {}", player_id, index);
    Ok(Value::Nil)
}

fn lua_do_player_add_item(_lua: &Lua, (player_id, item_id, count, can_drop): (u32, u16, Option<u32>, Option<bool>)) -> LuaResult<bool> {
    let count = count.unwrap_or(1);
    let can_drop = can_drop.unwrap_or(true);
    debug!("doPlayerAddItem: player={}, item={}, count={}, canDrop={}", player_id, item_id, count, can_drop);
    Ok(true)
}

// ============================================================================
// Item functions (stubs)
// ============================================================================

fn lua_do_create_item(_lua: &Lua, (item_id, count, position): (u16, Option<u32>, Value)) -> LuaResult<u32> {
    let count = count.unwrap_or(1);
    debug!("doCreateItem: item={}, count={}", item_id, count);
    Ok(0) // Return UID
}

fn lua_do_create_item_ex(_lua: &Lua, (item_id, count): (u16, Option<u32>)) -> LuaResult<u32> {
    let count = count.unwrap_or(1);
    debug!("doCreateItemEx: item={}, count={}", item_id, count);
    Ok(1) // Return UID
}

fn lua_do_tile_add_item_ex(_lua: &Lua, (position, uid): (Value, u32)) -> LuaResult<u8> {
    debug!("doTileAddItemEx: uid={}", uid);
    Ok(0) // RETURNVALUE_NOERROR
}

fn lua_do_add_container_item(_lua: &Lua, (container_uid, item_id, count): (u32, u16, Option<u32>)) -> LuaResult<u32> {
    let count = count.unwrap_or(1);
    debug!("doAddContainerItem: container={}, item={}, count={}", container_uid, item_id, count);
    Ok(1) // Return new item UID
}

// ============================================================================
// UID validation (stubs)
// ============================================================================

fn lua_is_valid_uid(_lua: &Lua, uid: u32) -> LuaResult<bool> {
    Ok(uid > 0 && uid < 0x10000000)
}

fn lua_is_depot(_lua: &Lua, uid: u32) -> LuaResult<bool> {
    debug!("isDepot: uid={}", uid);
    Ok(false)
}

fn lua_is_movable(_lua: &Lua, uid: u32) -> LuaResult<bool> {
    debug!("isMovable: uid={}", uid);
    Ok(true)
}

fn lua_get_depot_id(_lua: &Lua, uid: u32) -> LuaResult<u32> {
    debug!("getDepotId: uid={}", uid);
    Ok(0)
}

// ============================================================================
// Combat functions (stubs)
// ============================================================================

fn lua_create_combat_area(lua: &Lua, (area, ext_area): (Table, Option<Table>)) -> LuaResult<u32> {
    debug!("createCombatArea called");
    Ok(1) // Return area ID
}

fn lua_do_area_combat_health(_lua: &Lua, args: Variadic<Value>) -> LuaResult<bool> {
    debug!("doAreaCombatHealth called");
    Ok(true)
}

fn lua_do_target_combat_health(_lua: &Lua, args: Variadic<Value>) -> LuaResult<bool> {
    debug!("doTargetCombatHealth called");
    Ok(true)
}

fn lua_do_area_combat_mana(_lua: &Lua, args: Variadic<Value>) -> LuaResult<bool> {
    debug!("doAreaCombatMana called");
    Ok(true)
}

fn lua_do_target_combat_mana(_lua: &Lua, args: Variadic<Value>) -> LuaResult<bool> {
    debug!("doTargetCombatMana called");
    Ok(true)
}

fn lua_do_area_combat_condition(_lua: &Lua, args: Variadic<Value>) -> LuaResult<bool> {
    debug!("doAreaCombatCondition called");
    Ok(true)
}

fn lua_do_target_combat_condition(_lua: &Lua, args: Variadic<Value>) -> LuaResult<bool> {
    debug!("doTargetCombatCondition called");
    Ok(true)
}

fn lua_do_area_combat_dispel(_lua: &Lua, args: Variadic<Value>) -> LuaResult<bool> {
    debug!("doAreaCombatDispel called");
    Ok(true)
}

fn lua_do_target_combat_dispel(_lua: &Lua, args: Variadic<Value>) -> LuaResult<bool> {
    debug!("doTargetCombatDispel called");
    Ok(true)
}

fn lua_do_challenge_creature(_lua: &Lua, (creature_id, target_id): (u32, u32)) -> LuaResult<bool> {
    debug!("doChallengeCreature: {} -> {}", creature_id, target_id);
    Ok(true)
}

// ============================================================================
// Creature functions (stubs)
// ============================================================================

fn lua_do_move_creature(_lua: &Lua, (creature_id, direction, flags): (u32, u8, Option<u32>)) -> LuaResult<bool> {
    debug!("doMoveCreature: id={}, dir={}", creature_id, direction);
    Ok(true)
}

fn lua_do_set_creature_light(_lua: &Lua, (creature_id, level, color): (u32, u8, u8)) -> LuaResult<bool> {
    debug!("doSetCreatureLight: id={}, level={}, color={}", creature_id, level, color);
    Ok(true)
}

fn lua_do_set_creature_outfit(_lua: &Lua, (creature_id, outfit): (u32, Table)) -> LuaResult<bool> {
    debug!("doSetCreatureOutfit: id={}", creature_id);
    Ok(true)
}

fn lua_do_set_monster_outfit(_lua: &Lua, (creature_id, monster_name, time): (u32, String, Option<u32>)) -> LuaResult<bool> {
    debug!("doSetMonsterOutfit: id={}, monster={}", creature_id, monster_name);
    Ok(true)
}

fn lua_do_set_item_outfit(_lua: &Lua, (creature_id, item_id, time): (u32, u16, Option<u32>)) -> LuaResult<bool> {
    debug!("doSetItemOutfit: id={}, item={}", creature_id, item_id);
    Ok(true)
}

fn lua_get_creature_condition(_lua: &Lua, (creature_id, condition_type, sub_id): (u32, u32, Option<i32>)) -> LuaResult<bool> {
    debug!("getCreatureCondition: id={}, type={}", creature_id, condition_type);
    Ok(false)
}

// ============================================================================
// Channel/messaging (stubs)
// ============================================================================

fn lua_send_channel_message(_lua: &Lua, (channel_id, msg_type, message): (u16, u8, String)) -> LuaResult<()> {
    debug!("sendChannelMessage: channel={}, type={}, msg={}", channel_id, msg_type, message);
    Ok(())
}

fn lua_send_guild_channel_message(_lua: &Lua, (guild_id, msg_type, message): (u32, u8, String)) -> LuaResult<()> {
    debug!("sendGuildChannelMessage: guild={}, type={}, msg={}", guild_id, msg_type, message);
    Ok(())
}

// ============================================================================
// Misc (stubs)
// ============================================================================

fn lua_is_in_war(_lua: &Lua, (player_id, target_id): (u32, u32)) -> LuaResult<bool> {
    debug!("isInWar: {} vs {}", player_id, target_id);
    Ok(false)
}

fn lua_get_waypoint_position_by_name(lua: &Lua, name: String) -> LuaResult<Value> {
    debug!("getWaypointPositionByName: {}", name);
    Ok(Value::Nil)
}

// ============================================================================
// bit library
// ============================================================================

fn register_bit_library(lua: &Lua) -> LuaResult<()> {
    // Check if bit library already exists (LuaJIT has it)
    let globals = lua.globals();
    if globals.get::<Value>("bit").is_ok() {
        return Ok(());
    }

    let bit = lua.create_table()?;
    
    bit.set("bnot", lua.create_function(|_, n: i64| Ok(!n))?)?;
    bit.set("band", lua.create_function(|_, (a, b): (i64, i64)| Ok(a & b))?)?;
    bit.set("bor", lua.create_function(|_, (a, b): (i64, i64)| Ok(a | b))?)?;
    bit.set("bxor", lua.create_function(|_, (a, b): (i64, i64)| Ok(a ^ b))?)?;
    bit.set("lshift", lua.create_function(|_, (a, b): (i64, u32)| Ok(a << b))?)?;
    bit.set("rshift", lua.create_function(|_, (a, b): (i64, u32)| Ok(a >> b))?)?;
    
    globals.set("bit", bit)?;
    Ok(())
}

// ============================================================================
// configManager table
// ============================================================================

fn register_config_manager(lua: &Lua) -> LuaResult<()> {
    let config = lua.create_table()?;
    
    config.set("getString", lua.create_function(|_, key: u32| -> LuaResult<String> {
        debug!("configManager.getString({})", key);
        Ok(String::new())
    })?)?;
    
    config.set("getNumber", lua.create_function(|_, key: u32| -> LuaResult<i64> {
        debug!("configManager.getNumber({})", key);
        Ok(0)
    })?)?;
    
    config.set("getBoolean", lua.create_function(|_, key: u32| -> LuaResult<bool> {
        debug!("configManager.getBoolean({})", key);
        Ok(false)
    })?)?;
    
    lua.globals().set("configManager", config)?;
    
    // Also create configKeys table
    let keys = lua.create_table()?;
    // Add common config keys as enums
    keys.set("SERVER_NAME", 0u32)?;
    keys.set("IP", 1u32)?;
    keys.set("LOGIN_PORT", 2u32)?;
    keys.set("GAME_PORT", 3u32)?;
    keys.set("MYSQL_HOST", 4u32)?;
    keys.set("MYSQL_USER", 5u32)?;
    keys.set("MYSQL_PASS", 6u32)?;
    keys.set("MYSQL_DATABASE", 7u32)?;
    keys.set("RATE_EXP", 8u32)?;
    keys.set("RATE_SKILL", 9u32)?;
    keys.set("RATE_LOOT", 10u32)?;
    keys.set("RATE_MAGIC", 11u32)?;
    keys.set("RATE_SPAWN", 12u32)?;
    keys.set("FREE_PREMIUM", 13u32)?;
    keys.set("MAX_PLAYERS", 14u32)?;
    lua.globals().set("configKeys", keys)?;
    
    Ok(())
}

// ============================================================================
// db table
// ============================================================================

fn register_db(lua: &Lua) -> LuaResult<()> {
    let db = lua.create_table()?;
    
    db.set("query", lua.create_function(|_, query: String| -> LuaResult<bool> {
        debug!("db.query: {}", query);
        Ok(true)
    })?)?;
    
    db.set("asyncQuery", lua.create_function(|_, query: String| -> LuaResult<bool> {
        debug!("db.asyncQuery: {}", query);
        Ok(true)
    })?)?;
    
    db.set("storeQuery", lua.create_function(|_, query: String| -> LuaResult<u32> {
        debug!("db.storeQuery: {}", query);
        Ok(1) // Return result handle
    })?)?;
    
    db.set("asyncStoreQuery", lua.create_function(|_, (query, callback): (String, Function)| -> LuaResult<bool> {
        debug!("db.asyncStoreQuery: {}", query);
        Ok(true)
    })?)?;
    
    db.set("escapeString", lua.create_function(|_, s: String| -> LuaResult<String> {
        // Basic SQL escape
        Ok(s.replace('\'', "''").replace('\\', "\\\\"))
    })?)?;
    
    db.set("escapeBlob", lua.create_function(|_, data: mlua::String| -> LuaResult<String> {
        let bytes = data.as_bytes();
        let hex_str: String = bytes.iter().map(|b| format!("{:02x}", b)).collect();
        Ok(format!("x'{}'", hex_str))
    })?)?;
    
    db.set("lastInsertId", lua.create_function(|_, ()| -> LuaResult<u64> {
        Ok(0)
    })?)?;
    
    db.set("tableExists", lua.create_function(|_, table: String| -> LuaResult<bool> {
        debug!("db.tableExists: {}", table);
        Ok(true)
    })?)?;
    
    lua.globals().set("db", db)?;
    Ok(())
}

// ============================================================================
// result table
// ============================================================================

fn register_result(lua: &Lua) -> LuaResult<()> {
    let result = lua.create_table()?;
    
    result.set("getNumber", lua.create_function(|_, (handle, column): (u32, String)| -> LuaResult<i64> {
        debug!("result.getNumber({}, {})", handle, column);
        Ok(0)
    })?)?;
    
    result.set("getString", lua.create_function(|_, (handle, column): (u32, String)| -> LuaResult<String> {
        debug!("result.getString({}, {})", handle, column);
        Ok(String::new())
    })?)?;
    
    result.set("getStream", lua.create_function(|lua, (handle, column): (u32, String)| -> LuaResult<mlua::String> {
        debug!("result.getStream({}, {})", handle, column);
        lua.create_string(&[])
    })?)?;
    
    result.set("next", lua.create_function(|_, handle: u32| -> LuaResult<bool> {
        Ok(false)
    })?)?;
    
    result.set("free", lua.create_function(|_, handle: u32| -> LuaResult<bool> {
        debug!("result.free({})", handle);
        Ok(true)
    })?)?;
    
    lua.globals().set("result", result)?;
    Ok(())
}

// ============================================================================
// os.mtime
// ============================================================================

fn lua_os_mtime(_lua: &Lua, _: ()) -> LuaResult<u64> {
    use std::time::{SystemTime, UNIX_EPOCH};
    Ok(SystemTime::now()
        .duration_since(UNIX_EPOCH)
        .unwrap()
        .as_millis() as u64)
}

// ============================================================================
// table.create
// ============================================================================

fn lua_table_create(lua: &Lua, (narr, nrec): (Option<i32>, Option<i32>)) -> LuaResult<Table> {
    // Create a table with pre-allocated space
    lua.create_table()
}

// Simple hex encoding (no dependency)
mod hex {
    pub fn encode(data: &[u8]) -> String {
        data.iter().map(|b| format!("{:02x}", b)).collect()
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_is_in_array() {
        let lua = Lua::new();
        register_globals(&lua).unwrap();
        
        let result: bool = lua.load(r#"
            local arr = {1, 2, 3, 4, 5}
            return isInArray(arr, 3)
        "#).eval().unwrap();
        assert!(result);
        
        let result: bool = lua.load(r#"
            local arr = {1, 2, 3, 4, 5}
            return isInArray(arr, 10)
        "#).eval().unwrap();
        assert!(!result);
    }

    #[test]
    fn test_bit_operations() {
        let lua = Lua::new();
        register_globals(&lua).unwrap();
        
        // LuaJIT has built-in bit library, but our fallback should work
        let result: i64 = lua.load("return bit.band(0xFF, 0x0F)").eval().unwrap();
        assert_eq!(result, 0x0F);
        
        let result: i64 = lua.load("return bit.bor(0xF0, 0x0F)").eval().unwrap();
        assert_eq!(result, 0xFF);
    }

    #[test]
    fn test_db_escape() {
        let lua = Lua::new();
        register_globals(&lua).unwrap();
        
        let result: String = lua.load(r#"return db.escapeString("test'string")"#).eval().unwrap();
        assert_eq!(result, "test''string");
    }

    #[test]
    fn test_config_manager() {
        let lua = Lua::new();
        register_globals(&lua).unwrap();
        
        // Should not error
        let _: i64 = lua.load("return configManager.getNumber(configKeys.MAX_PLAYERS)").eval().unwrap();
    }
}
