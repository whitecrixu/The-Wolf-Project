//! GlobalEvent userdata for Lua (RevScriptSys).

use mlua::{Lua, Result as LuaResult, UserData, UserDataMethods, Function};

use crate::class_registry::create_extensible_class;

#[derive(Debug, Clone, Default)]
pub struct LuaGlobalEvent;

impl UserData for LuaGlobalEvent {
    fn add_methods<M: UserDataMethods<Self>>(methods: &mut M) {
        methods.add_method("type", |_, this, event_type: String| { tracing::debug!("GlobalEvent:type({})", event_type); Ok(this.clone()) });
        methods.add_method("register", |_, this, ()| { tracing::debug!("GlobalEvent:register()"); Ok(true) });
        methods.add_method("time", |_, this, time: String| Ok(this.clone()));
        methods.add_method("interval", |_, this, interval: u32| Ok(this.clone()));
        methods.add_method("onThink", |_, this, callback: Function| Ok(this.clone()));
        methods.add_method("onTime", |_, this, callback: Function| Ok(this.clone()));
        methods.add_method("onStartup", |_, this, callback: Function| Ok(this.clone()));
        methods.add_method("onShutdown", |_, this, callback: Function| Ok(this.clone()));
        methods.add_method("onRecord", |_, this, callback: Function| Ok(this.clone()));
    }
}

pub fn register(lua: &Lua) -> LuaResult<()> {
    let globalevent_ctor = lua.create_function(|_, ()| Ok(LuaGlobalEvent))?;
    create_extensible_class(lua, "GlobalEvent", globalevent_ctor)?;
    Ok(())
}
