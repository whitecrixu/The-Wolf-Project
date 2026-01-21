//! Class registry for Lua - allows scripts to extend classes with custom methods.
//!
//! TFS scripts expect to be able to do things like:
//! ```lua
//! rawgetmetatable("Player").__index = CustomFunction
//! Container.getTopParent = function(self)
//!     -- custom method
//! end
//! ```
//!
//! This module provides helpers to register classes as tables with metatables
//! that support both construction (via __call) and extension (via __newindex).
//!
//! Key concept: We create a "methods table" for each class that acts as the metatable.
//! This table is what rawgetmetatable("ClassName") returns, and scripts can modify it.

use mlua::{Lua, Result as LuaResult, Function, Table, Value};
use std::collections::HashMap;
use parking_lot::RwLock;

/// Registry of custom methods added to classes by Lua scripts.
#[derive(Default)]
pub struct ClassRegistry {
    /// Map of class name -> (method name -> Lua function key)
    custom_methods: RwLock<HashMap<String, HashMap<String, mlua::RegistryKey>>>,
}

impl ClassRegistry {
    pub fn new() -> Self {
        Self::default()
    }

    /// Register a custom method for a class.
    pub fn register_method(&self, lua: &Lua, class: &str, method: &str, func: Function) -> LuaResult<()> {
        let key = lua.create_registry_value(func)?;
        let mut methods = self.custom_methods.write();
        methods
            .entry(class.to_string())
            .or_default()
            .insert(method.to_string(), key);
        Ok(())
    }

    /// Get a custom method for a class.
    pub fn get_method(&self, lua: &Lua, class: &str, method: &str) -> Option<Function> {
        let methods = self.custom_methods.read();
        methods
            .get(class)?
            .get(method)
            .and_then(|key| lua.registry_value(key).ok())
    }
}

/// Create a class table that supports both construction and extension.
/// 
/// Usage:
/// ```lua
/// -- Construction works via __call
/// local container = Container(123)
/// 
/// -- Extension works via __newindex
/// Container.customMethod = function(self) end
/// ```
#[allow(dead_code)]
pub fn create_class_table(
    lua: &Lua,
    class_name: &str,
    constructor: Function,
) -> LuaResult<Table> {
    let class_table = lua.create_table()?;
    let _class_name_owned = class_name.to_string();
    let class_name_for_newindex = class_name.to_string();
    let _class_name_for_index = class_name.to_string();
    
    // Store custom methods in a separate table
    let methods_table = lua.create_table()?;
    let methods_key = lua.create_registry_value(methods_table)?;
    let methods_key_for_newindex = lua.create_registry_value(lua.registry_value::<Table>(&methods_key)?)?;
    let methods_key_for_index = lua.create_registry_value(lua.registry_value::<Table>(&methods_key)?)?;
    
    // Create metatable
    let metatable = lua.create_table()?;
    
    // __call - allows Container(id) construction
    let class_name_call = class_name.to_string();
    metatable.set("__call", lua.create_function(move |lua, (_, args): (Value, mlua::MultiValue)| {
        let class_table: Table = lua.named_registry_value("__class_constructors")?;
        if let Ok(ctor) = class_table.get::<Function>(class_name_call.as_str()) {
            ctor.call(args)
        } else {
            Ok(Value::Nil)
        }
    })?)?;
    
    // __newindex - allows Container.method = function() end
    metatable.set("__newindex", lua.create_function(move |lua, (_, key, value): (Table, String, Value)| {
        tracing::debug!("Class {} extension: adding method '{}'", class_name_for_newindex, key);
        let methods: Table = lua.registry_value(&methods_key_for_newindex)?;
        methods.set(key, value)?;
        Ok(())
    })?)?;
    
    // __index - allows access to custom methods
    metatable.set("__index", lua.create_function(move |lua, (_, key): (Table, String)| {
        let methods: Table = lua.registry_value(&methods_key_for_index)?;
        methods.get::<Value>(key)
    })?)?;
    
    class_table.set_metatable(Some(metatable));
    
    // Store the actual constructor in registry
    let constructors: Table = lua.named_registry_value("__class_constructors")
        .unwrap_or_else(|_| {
            let t = lua.create_table().unwrap();
            lua.set_named_registry_value("__class_constructors", t.clone()).unwrap();
            t
        });
    constructors.set(class_name, constructor)?;
    lua.set_named_registry_value("__class_constructors", constructors)?;
    
    Ok(class_table)
}

/// Simpler version - just create a table that allows extension.
/// 
/// This creates a global table `ClassName` with:
/// - __call: allows `ClassName(args)` construction
/// - __index: returns methods from a methods table (for compat.lua)
/// - __newindex: allows `ClassName.method = func` extension
pub fn create_extensible_class(
    lua: &Lua,
    class_name: &str,
    constructor: Function,
) -> LuaResult<()> {
    use crate::userdata::meta_helpers::get_or_create_class_metatable;
    
    let class_table = lua.create_table()?;
    let class_name_str = class_name.to_string();
    
    // Store constructor inside the table itself
    class_table.set("__constructor", constructor.clone())?;
    
    // Create/get the class metatable that rawgetmetatable will return
    // This is also used to store methods for Class.method access
    let instance_metatable = get_or_create_class_metatable(lua, class_name)?;
    
    // Store a reference to the instance metatable for __index lookups
    let mt_key = lua.create_registry_value(instance_metatable)?;
    
    // Create class table metatable (for Class() construction syntax and method lookup)
    let metatable = lua.create_table()?;
    
    // __call - allows ClassName(args) construction
    metatable.set("__call", lua.create_function(|_, (t, args): (Table, mlua::MultiValue)| {
        let ctor: Function = t.get("__constructor")?;
        ctor.call::<Value>(args)
    })?)?;
    
    // __index - allows ClassName.methodName access
    // This looks up in the instance metatable (same one rawgetmetatable returns)
    metatable.set("__index", lua.create_function(move |lua, (_, key): (Table, String)| {
        let mt: Table = lua.registry_value(&mt_key)?;
        mt.get::<Value>(key)
    })?)?;
    
    class_table.set_metatable(Some(metatable));
    lua.globals().set(class_name_str, class_table)?;
    
    Ok(())
}

/// Get the metatable for a class by name (for rawgetmetatable)
pub fn get_class_metatable(lua: &Lua, class_name: &str) -> LuaResult<Option<Table>> {
    use crate::userdata::meta_helpers::get_or_create_class_metatable;
    
    // Always return a table (create if needed)
    Ok(Some(get_or_create_class_metatable(lua, class_name)?))
}

/// Register a static method on a class (accessible as ClassName.methodName)
pub fn register_class_method(lua: &Lua, class_name: &str, method_name: &str, method: Function) -> LuaResult<()> {
    use crate::userdata::meta_helpers::get_or_create_class_metatable;
    
    let mt = get_or_create_class_metatable(lua, class_name)?;
    mt.set(method_name, method)?;
    Ok(())
}
