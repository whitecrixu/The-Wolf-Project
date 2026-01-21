//! MoveEvent userdata for Lua (RevScriptSys).

use mlua::{Lua, Result as LuaResult, UserData, UserDataMethods, Function};

use crate::class_registry::create_extensible_class;
use super::position::LuaPosition;

#[derive(Debug, Clone, Default)]
pub struct LuaMoveEvent;

impl UserData for LuaMoveEvent {
    fn add_methods<M: UserDataMethods<Self>>(methods: &mut M) {
        methods.add_method("type", |_, this, event_type: String| { tracing::debug!("MoveEvent:type({})", event_type); Ok(this.clone()) });
        methods.add_method("register", |_, this, ()| { tracing::debug!("MoveEvent:register()"); Ok(true) });
        methods.add_method("level", |_, this, lvl: u32| Ok(this.clone()));
        methods.add_method("magicLevel", |_, this, lvl: u32| Ok(this.clone()));
        methods.add_method("slot", |_, this, slot: String| Ok(this.clone()));
        methods.add_method("id", |_, this, id: u16| Ok(this.clone()));
        methods.add_method("aid", |_, this, aid: u16| Ok(this.clone()));
        methods.add_method("uid", |_, this, uid: u16| Ok(this.clone()));
        methods.add_method("position", |_, this, pos: LuaPosition| Ok(this.clone()));
        methods.add_method("premium", |_, this, v: bool| Ok(this.clone()));
        methods.add_method("vocation", |_, this, voc: String| Ok(this.clone()));
        methods.add_method("onEquip", |_, this, callback: Function| Ok(this.clone()));
        methods.add_method("onDeEquip", |_, this, callback: Function| Ok(this.clone()));
        methods.add_method("onStepIn", |_, this, callback: Function| Ok(this.clone()));
        methods.add_method("onStepOut", |_, this, callback: Function| Ok(this.clone()));
        methods.add_method("onAddItem", |_, this, callback: Function| Ok(this.clone()));
        methods.add_method("onRemoveItem", |_, this, callback: Function| Ok(this.clone()));
    }
}

pub fn register(lua: &Lua) -> LuaResult<()> {
    let moveevent_ctor = lua.create_function(|_, ()| Ok(LuaMoveEvent))?;
    create_extensible_class(lua, "MoveEvent", moveevent_ctor)?;
    Ok(())
}
