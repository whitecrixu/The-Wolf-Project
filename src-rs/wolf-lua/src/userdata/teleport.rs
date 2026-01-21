//! Teleport userdata for Lua.

use mlua::{Lua, Result as LuaResult, UserData, UserDataMethods, Value};
use wolf_core::Position;
use crate::class_registry::create_extensible_class;
use super::position::LuaPosition;

#[derive(Debug, Clone)]
pub struct LuaTeleport {
    pub uid: u32,
    pub destination: Position,
}

impl Default for LuaTeleport {
    fn default() -> Self {
        Self { uid: 0, destination: Position::default() }
    }
}

impl UserData for LuaTeleport {
    fn add_methods<M: UserDataMethods<Self>>(methods: &mut M) {
        methods.add_method("getUniqueId", |_, this, ()| Ok(this.uid));
        methods.add_method("getDestination", |_, this, ()| Ok(LuaPosition(this.destination)));
        methods.add_method("setDestination", |_, _this, pos: LuaPosition| {
            tracing::debug!("Teleport:setDestination({:?})", pos.0);
            Ok(())
        });
    }
}

pub fn register(lua: &Lua) -> LuaResult<()> {
    let teleport_ctor = lua.create_function(|_, uid: u32| Ok(LuaTeleport { uid, ..Default::default() }))?;
    create_extensible_class(lua, "Teleport", teleport_ctor)?;
    Ok(())
}
