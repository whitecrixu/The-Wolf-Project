//! Town userdata for Lua.

use mlua::{Lua, Result as LuaResult, UserData, UserDataMethods};
use wolf_core::Position;

use crate::class_registry::create_extensible_class;
use super::position::LuaPosition;

#[derive(Debug, Clone)]
pub struct LuaTown {
    pub id: u32,
    pub name: String,
    pub temple_position: Position,
}

impl Default for LuaTown {
    fn default() -> Self {
        Self { id: 0, name: String::new(), temple_position: Position::default() }
    }
}

impl UserData for LuaTown {
    fn add_methods<M: UserDataMethods<Self>>(methods: &mut M) {
        methods.add_method("getId", |_, this, ()| Ok(this.id));
        methods.add_method("getName", |_, this, ()| Ok(this.name.clone()));
        methods.add_method("getTemplePosition", |_, this, ()| Ok(LuaPosition(this.temple_position)));
    }
}

pub fn register(lua: &Lua) -> LuaResult<()> {
    let town_ctor = lua.create_function(|_, id: u32| Ok(LuaTown { id, ..Default::default() }))?;
    create_extensible_class(lua, "Town", town_ctor)?;
    Ok(())
}
