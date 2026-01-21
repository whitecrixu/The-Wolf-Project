//! Condition userdata for Lua.

use mlua::{Lua, Result as LuaResult, UserData, UserDataMethods, Value};
use crate::class_registry::{create_extensible_class, register_class_method};

/// Condition wrapper for Lua.
#[derive(Debug, Clone)]
pub struct LuaCondition {
    pub condition_type: u32,
    pub condition_id: i32,
    pub sub_id: i32,
    pub ticks: i32,
}

impl Default for LuaCondition {
    fn default() -> Self {
        Self {
            condition_type: 0,
            condition_id: -1,
            sub_id: 0,
            ticks: 0,
        }
    }
}

impl UserData for LuaCondition {
    fn add_methods<M: UserDataMethods<Self>>(methods: &mut M) {
        methods.add_method("delete", |_, _this, ()| {
            tracing::debug!("Condition:delete()");
            Ok(())
        });
        
        methods.add_method("getId", |_, this, ()| Ok(this.condition_id));
        methods.add_method("getSubId", |_, this, ()| Ok(this.sub_id));
        methods.add_method("getType", |_, this, ()| Ok(this.condition_type));
        methods.add_method("getIcons", |_, _this, ()| Ok(0u32));
        methods.add_method("getEndTime", |_, _this, ()| Ok(0i64));
        
        methods.add_method("clone", |_, this, ()| Ok(this.clone()));
        
        methods.add_method("getTicks", |_, this, ()| Ok(this.ticks));
        methods.add_method("setTicks", |_, _this, ticks: i32| {
            tracing::debug!("Condition:setTicks({})", ticks);
            Ok(())
        });
        
        methods.add_method("setParameter", |_, _this, (key, value): (u32, i32)| {
            tracing::debug!("Condition:setParameter({}, {})", key, value);
            Ok(())
        });
        
        methods.add_method("setFormula", |_, _this, (min_a, min_b, max_a, max_b): (f64, f64, f64, f64)| {
            tracing::debug!("Condition:setFormula({}, {}, {}, {})", min_a, min_b, max_a, max_b);
            Ok(())
        });
        
        methods.add_method("setOutfit", |_, _this, _outfit: mlua::Table| {
            tracing::debug!("Condition:setOutfit()");
            Ok(())
        });
        
        methods.add_method("addDamage", |_, _this, (rounds, time, value): (i32, i32, i32)| {
            tracing::debug!("Condition:addDamage({}, {}, {})", rounds, time, value);
            Ok(())
        });
    }
}

pub fn register(lua: &Lua) -> LuaResult<()> {
    let condition_ctor = lua.create_function(|_, (condition_type, condition_id, sub_id): (u32, Option<i32>, Option<i32>)| {
        Ok(LuaCondition {
            condition_type,
            condition_id: condition_id.unwrap_or(-1),
            sub_id: sub_id.unwrap_or(0),
            ..Default::default()
        })
    })?;
    
    create_extensible_class(lua, "Condition", condition_ctor)?;
    
    // Register static methods for compat.lua
    register_class_method(lua, "Condition", "setParameter", lua.create_function(|_, _args: mlua::MultiValue| {
        tracing::debug!("Condition.setParameter()");
        Ok(())
    })?)?;
    
    register_class_method(lua, "Condition", "setFormula", lua.create_function(|_, _args: mlua::MultiValue| {
        tracing::debug!("Condition.setFormula()");
        Ok(())
    })?)?;
    
    register_class_method(lua, "Condition", "addDamage", lua.create_function(|_, _args: mlua::MultiValue| {
        tracing::debug!("Condition.addDamage()");
        Ok(())
    })?)?;
    
    register_class_method(lua, "Condition", "setOutfit", lua.create_function(|_, _args: mlua::MultiValue| {
        tracing::debug!("Condition.setOutfit()");
        Ok(())
    })?)?;
    
    Ok(())
}