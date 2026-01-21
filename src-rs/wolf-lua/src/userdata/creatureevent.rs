//! CreatureEvent userdata for Lua (RevScriptSys).

use mlua::{Lua, Result as LuaResult, UserData, UserDataMethods, Function};

use crate::class_registry::create_extensible_class;

#[derive(Debug, Clone, Default)]
pub struct LuaCreatureEvent;

impl UserData for LuaCreatureEvent {
    fn add_methods<M: UserDataMethods<Self>>(methods: &mut M) {
        methods.add_method("type", |_, this, event_type: String| { tracing::debug!("CreatureEvent:type({})", event_type); Ok(this.clone()) });
        methods.add_method("register", |_, this, ()| { tracing::debug!("CreatureEvent:register()"); Ok(true) });
        methods.add_method("onLogin", |_, this, callback: Function| Ok(this.clone()));
        methods.add_method("onLogout", |_, this, callback: Function| Ok(this.clone()));
        methods.add_method("onThink", |_, this, callback: Function| Ok(this.clone()));
        methods.add_method("onPrepareDeath", |_, this, callback: Function| Ok(this.clone()));
        methods.add_method("onDeath", |_, this, callback: Function| Ok(this.clone()));
        methods.add_method("onKill", |_, this, callback: Function| Ok(this.clone()));
        methods.add_method("onAdvance", |_, this, callback: Function| Ok(this.clone()));
        methods.add_method("onModalWindow", |_, this, callback: Function| Ok(this.clone()));
        methods.add_method("onTextEdit", |_, this, callback: Function| Ok(this.clone()));
        methods.add_method("onHealthChange", |_, this, callback: Function| Ok(this.clone()));
        methods.add_method("onManaChange", |_, this, callback: Function| Ok(this.clone()));
        methods.add_method("onExtendedOpcode", |_, this, callback: Function| Ok(this.clone()));
    }
}

pub fn register(lua: &Lua) -> LuaResult<()> {
    let creatureevent_ctor = lua.create_function(|_, ()| Ok(LuaCreatureEvent))?;
    create_extensible_class(lua, "CreatureEvent", creatureevent_ctor)?;
    Ok(())
}
