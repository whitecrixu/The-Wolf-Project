//! TalkAction userdata for Lua (RevScriptSys).

use mlua::{Lua, Result as LuaResult, UserData, UserDataMethods, Function};

use crate::class_registry::create_extensible_class;

#[derive(Debug, Clone, Default)]
pub struct LuaTalkAction;

impl UserData for LuaTalkAction {
    fn add_methods<M: UserDataMethods<Self>>(methods: &mut M) {
        methods.add_method("onSay", |_, this, callback: Function| { tracing::debug!("TalkAction:onSay()"); Ok(this.clone()) });
        methods.add_method("register", |_, this, ()| { tracing::debug!("TalkAction:register()"); Ok(true) });
        methods.add_method("words", |_, this, words: String| Ok(this.clone()));
        methods.add_method("separator", |_, this, sep: String| Ok(this.clone()));
    }
}

pub fn register(lua: &Lua) -> LuaResult<()> {
    let talkaction_ctor = lua.create_function(|_, ()| Ok(LuaTalkAction))?;
    create_extensible_class(lua, "TalkAction", talkaction_ctor)?;
    Ok(())
}
