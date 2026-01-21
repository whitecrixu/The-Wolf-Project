//! NetworkMessage userdata for Lua.

use mlua::{Lua, Result as LuaResult, UserData, UserDataMethods};

use crate::class_registry::create_extensible_class;
use super::position::LuaPosition;

#[derive(Debug, Clone, Default)]
pub struct LuaNetworkMessage {
    pub buffer: Vec<u8>,
    pub position: usize,
}

impl UserData for LuaNetworkMessage {
    fn add_methods<M: UserDataMethods<Self>>(methods: &mut M) {
        methods.add_method("delete", |_, _, ()| Ok(()));
        methods.add_method("getByte", |_, _, ()| Ok(0u8));
        methods.add_method("getU16", |_, _, ()| Ok(0u16));
        methods.add_method("getU32", |_, _, ()| Ok(0u32));
        methods.add_method("getU64", |_, _, ()| Ok(0u64));
        methods.add_method("getString", |_, _, ()| Ok(String::new()));
        methods.add_method("getPosition", |_, _, ()| Ok(LuaPosition::new(0, 0, 0)));
        methods.add_method("addByte", |_, _, byte: u8| Ok(()));
        methods.add_method("addU16", |_, _, val: u16| Ok(()));
        methods.add_method("addU32", |_, _, val: u32| Ok(()));
        methods.add_method("addU64", |_, _, val: u64| Ok(()));
        methods.add_method("addString", |_, _, s: String| Ok(()));
        methods.add_method("addPosition", |_, _, pos: LuaPosition| Ok(()));
        methods.add_method("addDouble", |_, _, (val, precision): (f64, Option<u8>)| Ok(()));
        methods.add_method("addItem", |_, _, item: mlua::Value| Ok(()));
        methods.add_method("addItemId", |_, _, id: u16| Ok(()));
        methods.add_method("reset", |_, _, ()| Ok(()));
        methods.add_method("skipBytes", |_, _, count: usize| Ok(()));
        methods.add_method("sendToPlayer", |_, _, player: mlua::Value| { tracing::debug!("NetworkMessage:sendToPlayer()"); Ok(true) });
    }
}

pub fn register(lua: &Lua) -> LuaResult<()> {
    let networkmessage_ctor = lua.create_function(|_, ()| Ok(LuaNetworkMessage::default()))?;
    create_extensible_class(lua, "NetworkMessage", networkmessage_ctor)?;
    Ok(())
}
