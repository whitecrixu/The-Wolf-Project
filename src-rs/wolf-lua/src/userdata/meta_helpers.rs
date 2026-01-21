//! Helper functions for userdata metatable management.
//! 
//! This module provides utilities to make userdata compatible with TFS compat.lua,
//! which expects to be able to modify metatables via rawgetmetatable("ClassName").

use mlua::{Lua, Result as LuaResult, Table, Value, Function};

/// Get or create a class methods table that will be returned by rawgetmetatable("ClassName").
/// This table is stored in the registry and can be modified by scripts.
pub fn get_or_create_class_metatable(lua: &Lua, class_name: &str) -> LuaResult<Table> {
    // Get or create the __class_metatables registry table
    let metatables: Table = lua.named_registry_value("__class_metatables")
        .unwrap_or_else(|_| {
            let t = lua.create_table().unwrap();
            lua.set_named_registry_value("__class_metatables", t.clone()).unwrap();
            t
        });
    
    // Check if this class already has a metatable
    match metatables.get::<Value>(class_name)? {
        Value::Table(t) => Ok(t),
        _ => {
            // Create new metatable for this class
            let class_mt = lua.create_table()?;
            class_mt.set("__name", class_name)?;
            metatables.set(class_name, class_mt.clone())?;
            lua.set_named_registry_value("__class_metatables", metatables)?;
            Ok(class_mt)
        }
    }
}

/// Try to call a custom __index function from the class metatable.
/// Returns None if __index is not set or is not a function.
pub fn try_custom_index(lua: &Lua, class_name: &str, ud: Value, key: &str) -> LuaResult<Option<Value>> {
    let metatables: Table = match lua.named_registry_value("__class_metatables") {
        Ok(t) => t,
        Err(_) => return Ok(None),
    };
    
    let class_mt: Table = match metatables.get::<Value>(class_name)? {
        Value::Table(t) => t,
        _ => return Ok(None),
    };
    
    // Get __index from class metatable
    match class_mt.get::<Value>("__index")? {
        Value::Function(f) => {
            // Call __index(self, key)
            let result = f.call::<Value>((ud, key))?;
            if result != Value::Nil {
                Ok(Some(result))
            } else {
                Ok(None)
            }
        }
        Value::Table(t) => {
            // __index is a table, lookup key
            let result = t.get::<Value>(key)?;
            if result != Value::Nil {
                Ok(Some(result))
            } else {
                Ok(None)
            }
        }
        _ => Ok(None),
    }
}
