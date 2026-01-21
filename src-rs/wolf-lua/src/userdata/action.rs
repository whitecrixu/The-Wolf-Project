//! Action userdata for Lua (RevScriptSys).

use mlua::{Lua, Result as LuaResult, UserData, UserDataMethods, Function};

use crate::class_registry::create_extensible_class;

#[derive(Debug, Clone, Default)]
pub struct LuaAction;

impl UserData for LuaAction {
    fn add_methods<M: UserDataMethods<Self>>(methods: &mut M) {
        methods.add_method("onUse", |_, this, callback: Function| { tracing::debug!("Action:onUse()"); Ok(this.clone()) });
        methods.add_method("register", |_, this, ()| { tracing::debug!("Action:register()"); Ok(true) });
        methods.add_method("id", |_, this, id: u16| Ok(this.clone()));
        methods.add_method("aid", |_, this, aid: u16| Ok(this.clone()));
        methods.add_method("uid", |_, this, uid: u16| Ok(this.clone()));
        methods.add_method("allowFarUse", |_, this, v: bool| Ok(this.clone()));
        methods.add_method("blockWalls", |_, this, v: bool| Ok(this.clone()));
        methods.add_method("checkFloor", |_, this, v: bool| Ok(this.clone()));
    }
}

pub fn register(lua: &Lua) -> LuaResult<()> {
    let action_ctor = lua.create_function(|_, ()| Ok(LuaAction))?;
    create_extensible_class(lua, "Action", action_ctor)?;
    Ok(())
}
