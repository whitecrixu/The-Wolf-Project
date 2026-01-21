//! ModalWindow userdata for Lua.

use mlua::{Lua, Result as LuaResult, UserData, UserDataMethods};

use crate::class_registry::create_extensible_class;

#[derive(Debug, Clone)]
pub struct LuaModalWindow {
    pub id: u32,
    pub title: String,
    pub message: String,
    pub default_enter: u8,
    pub default_escape: u8,
    pub priority: bool,
}

impl Default for LuaModalWindow {
    fn default() -> Self {
        Self { id: 0, title: String::new(), message: String::new(), default_enter: 0xFF, default_escape: 0xFF, priority: false }
    }
}

impl UserData for LuaModalWindow {
    fn add_methods<M: UserDataMethods<Self>>(methods: &mut M) {
        methods.add_method("delete", |_, _, ()| Ok(()));
        methods.add_method("getId", |_, this, ()| Ok(this.id));
        methods.add_method("getTitle", |_, this, ()| Ok(this.title.clone()));
        methods.add_method("getMessage", |_, this, ()| Ok(this.message.clone()));
        methods.add_method("setTitle", |_, _, title: String| { tracing::debug!("ModalWindow:setTitle({})", title); Ok(()) });
        methods.add_method("setMessage", |_, _, msg: String| { tracing::debug!("ModalWindow:setMessage({})", msg); Ok(()) });
        methods.add_method("getButtonCount", |_, _, ()| Ok(0u8));
        methods.add_method("getChoiceCount", |_, _, ()| Ok(0u8));
        methods.add_method("addButton", |_, _, (id, text, enter_default): (u8, String, Option<bool>)| Ok(()));
        methods.add_method("addChoice", |_, _, (id, text): (u8, String)| Ok(()));
        methods.add_method("getDefaultEnterButton", |_, this, ()| Ok(this.default_enter));
        methods.add_method("setDefaultEnterButton", |_, _, id: u8| Ok(()));
        methods.add_method("getDefaultEscapeButton", |_, this, ()| Ok(this.default_escape));
        methods.add_method("setDefaultEscapeButton", |_, _, id: u8| Ok(()));
        methods.add_method("hasPriority", |_, this, ()| Ok(this.priority));
        methods.add_method("setPriority", |_, _, priority: bool| Ok(()));
        methods.add_method("sendToPlayer", |_, _, player: mlua::Value| { tracing::debug!("ModalWindow:sendToPlayer()"); Ok(true) });
    }
}

pub fn register(lua: &Lua) -> LuaResult<()> {
    let modalwindow_ctor = lua.create_function(|_, (id, title, message): (u32, String, String)| {
        Ok(LuaModalWindow { id, title, message, ..Default::default() })
    })?;
    create_extensible_class(lua, "ModalWindow", modalwindow_ctor)?;
    Ok(())
}
