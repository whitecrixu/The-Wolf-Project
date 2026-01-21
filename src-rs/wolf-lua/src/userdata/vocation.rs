//! Vocation userdata for Lua.

use mlua::{Lua, Result as LuaResult, UserData, UserDataMethods, Value};

use crate::class_registry::create_extensible_class;

#[derive(Debug, Clone)]
pub struct LuaVocation {
    pub id: u16,
    pub client_id: u16,
    pub name: String,
    pub description: String,
}

impl Default for LuaVocation {
    fn default() -> Self {
        Self { id: 0, client_id: 0, name: String::from("None"), description: String::new() }
    }
}

impl UserData for LuaVocation {
    fn add_methods<M: UserDataMethods<Self>>(methods: &mut M) {
        methods.add_method("getId", |_, this, ()| Ok(this.id));
        methods.add_method("getClientId", |_, this, ()| Ok(this.client_id));
        methods.add_method("getName", |_, this, ()| Ok(this.name.clone()));
        methods.add_method("getDescription", |_, this, ()| Ok(this.description.clone()));
        methods.add_method("getRequiredSkillTries", |_, _, (skill, level): (u8, u32)| Ok(0u64));
        methods.add_method("getRequiredManaSpent", |_, _, level: u32| Ok(0u64));
        methods.add_method("getCapacityGain", |_, _, ()| Ok(10u32));
        methods.add_method("getHealthGain", |_, _, ()| Ok(5i32));
        methods.add_method("getHealthGainTicks", |_, _, ()| Ok(1000u32));
        methods.add_method("getHealthGainAmount", |_, _, ()| Ok(1i32));
        methods.add_method("getManaGain", |_, _, ()| Ok(5i32));
        methods.add_method("getManaGainTicks", |_, _, ()| Ok(1000u32));
        methods.add_method("getManaGainAmount", |_, _, ()| Ok(1i32));
        methods.add_method("getMaxSoul", |_, _, ()| Ok(100u8));
        methods.add_method("getSoulGainTicks", |_, _, ()| Ok(60000u32));
        methods.add_method("getAttackSpeed", |_, _, ()| Ok(2000u32));
        methods.add_method("getBaseSpeed", |_, _, ()| Ok(220u32));
        methods.add_method("getDemotion", |_, _, ()| -> LuaResult<Value> { Ok(Value::Nil) });
        methods.add_method("getPromotion", |_, _, ()| -> LuaResult<Value> { Ok(Value::Nil) });
    }
}

pub fn register(lua: &Lua) -> LuaResult<()> {
    let vocation_ctor = lua.create_function(|_, id: u16| Ok(LuaVocation { id, ..Default::default() }))?;
    create_extensible_class(lua, "Vocation", vocation_ctor)?;
    Ok(())
}
