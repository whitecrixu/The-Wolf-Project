//! House userdata for Lua.

use mlua::{Lua, Result as LuaResult, UserData, UserDataMethods, Value};
use wolf_core::Position;

use crate::class_registry::create_extensible_class;
use super::position::LuaPosition;

#[derive(Debug, Clone)]
pub struct LuaHouse {
    pub id: u32,
    pub name: String,
    pub town_id: u32,
    pub exit_position: Position,
    pub rent: u32,
    pub owner_guid: u32,
}

impl Default for LuaHouse {
    fn default() -> Self {
        Self { id: 0, name: String::new(), town_id: 0, exit_position: Position::default(), rent: 0, owner_guid: 0 }
    }
}

impl UserData for LuaHouse {
    fn add_methods<M: UserDataMethods<Self>>(methods: &mut M) {
        methods.add_method("getId", |_, this, ()| Ok(this.id));
        methods.add_method("getName", |_, this, ()| Ok(this.name.clone()));
        methods.add_method("getTown", |_, this, ()| -> LuaResult<Value> { Ok(Value::Nil) });
        methods.add_method("getExitPosition", |_, this, ()| Ok(LuaPosition(this.exit_position)));
        methods.add_method("getRent", |_, this, ()| Ok(this.rent));
        methods.add_method("getOwnerGuid", |_, this, ()| Ok(this.owner_guid));
        methods.add_method("setOwnerGuid", |_, _, guid: u32| { tracing::debug!("House:setOwnerGuid({})", guid); Ok(()) });
        methods.add_method("getBeds", |lua, _, ()| Ok(lua.create_table()?));
        methods.add_method("getBedCount", |_, _, ()| Ok(0u32));
        methods.add_method("getDoors", |lua, _, ()| Ok(lua.create_table()?));
        methods.add_method("getDoorCount", |_, _, ()| Ok(0u32));
        methods.add_method("getTiles", |lua, _, ()| Ok(lua.create_table()?));
        methods.add_method("getTileCount", |_, _, ()| Ok(0u32));
        methods.add_method("getAccessList", |_, _, list_id: u32| Ok(String::new()));
        methods.add_method("setAccessList", |_, _, (list_id, list): (u32, String)| { tracing::debug!("House:setAccessList({}, {})", list_id, list); Ok(()) });
    }
}

pub fn register(lua: &Lua) -> LuaResult<()> {
    let house_ctor = lua.create_function(|_, id: u32| Ok(LuaHouse { id, ..Default::default() }))?;
    create_extensible_class(lua, "House", house_ctor)?;
    Ok(())
}
