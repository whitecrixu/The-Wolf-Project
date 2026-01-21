//! Combat userdata for Lua.

use mlua::{Lua, Result as LuaResult, UserData, UserDataMethods, Value};
use crate::class_registry::{create_extensible_class, register_class_method};

/// Combat wrapper for Lua.
#[derive(Debug, Clone, Default)]
pub struct LuaCombat {
    pub id: u32,
}

impl UserData for LuaCombat {
    fn add_methods<M: UserDataMethods<Self>>(methods: &mut M) {
        methods.add_method("setParameter", |_, _this, (key, value): (u32, Value)| {
            tracing::debug!("Combat:setParameter({}, {:?})", key, value);
            Ok(())
        });
        
        methods.add_method("setFormula", |_, _this, (formula_type, min_a, min_b, max_a, max_b): (u8, f64, f64, f64, f64)| {
            tracing::debug!("Combat:setFormula({}, {}, {}, {}, {})", formula_type, min_a, min_b, max_a, max_b);
            Ok(())
        });
        
        methods.add_method("setArea", |_, _this, _area: Value| {
            tracing::debug!("Combat:setArea()");
            Ok(())
        });
        
        methods.add_method("setCondition", |_, _this, _condition: Value| {
            tracing::debug!("Combat:setCondition()");
            Ok(())
        });
        
        methods.add_method("setCallback", |_, _this, (callback_type, callback_name): (u8, String)| {
            tracing::debug!("Combat:setCallback({}, {})", callback_type, callback_name);
            Ok(())
        });
        
        methods.add_method("setOrigin", |_, _this, origin: u8| {
            tracing::debug!("Combat:setOrigin({})", origin);
            Ok(())
        });
        
        methods.add_method("execute", |_, _this, (_creature, _variant): (Value, Value)| {
            tracing::debug!("Combat:execute()");
            Ok(true)
        });
    }
}

pub fn register(lua: &Lua) -> LuaResult<()> {
    let combat_ctor = lua.create_function(|_, ()| {
        static COMBAT_ID: std::sync::atomic::AtomicU32 = std::sync::atomic::AtomicU32::new(1);
        Ok(LuaCombat {
            id: COMBAT_ID.fetch_add(1, std::sync::atomic::Ordering::Relaxed),
        })
    })?;
    
    create_extensible_class(lua, "Combat", combat_ctor)?;
    
    // Register static methods for compat.lua (Combat.setArea = Combat.setArea pattern)
    // These accept userdata as first argument (for self:method() calls)
    register_class_method(lua, "Combat", "setArea", lua.create_function(|_, _args: mlua::MultiValue| {
        tracing::debug!("Combat.setArea()");
        Ok(())
    })?)?;
    
    register_class_method(lua, "Combat", "setCallback", lua.create_function(|_, _args: mlua::MultiValue| {
        tracing::debug!("Combat.setCallback()");
        Ok(())
    })?)?;
    
    register_class_method(lua, "Combat", "setCondition", lua.create_function(|_, _args: mlua::MultiValue| {
        tracing::debug!("Combat.setCondition()");
        Ok(())
    })?)?;
    
    register_class_method(lua, "Combat", "setFormula", lua.create_function(|_, _args: mlua::MultiValue| {
        tracing::debug!("Combat.setFormula()");
        Ok(())
    })?)?;
    
    register_class_method(lua, "Combat", "setParameter", lua.create_function(|_, _args: mlua::MultiValue| {
        tracing::debug!("Combat.setParameter()");
        Ok(())
    })?)?;
    
    Ok(())
}
