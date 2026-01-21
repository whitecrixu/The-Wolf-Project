//! Guild userdata for Lua.

use mlua::{Lua, Result as LuaResult, UserData, UserDataMethods, Value};

use crate::class_registry::create_extensible_class;

#[derive(Debug, Clone)]
pub struct LuaGuild {
    pub id: u32,
    pub name: String,
    pub motd: String,
}

impl Default for LuaGuild {
    fn default() -> Self {
        Self { id: 0, name: String::new(), motd: String::new() }
    }
}

impl UserData for LuaGuild {
    fn add_methods<M: UserDataMethods<Self>>(methods: &mut M) {
        methods.add_method("getId", |_, this, ()| Ok(this.id));
        methods.add_method("getName", |_, this, ()| Ok(this.name.clone()));
        methods.add_method("getMembersOnline", |lua, _, ()| Ok(lua.create_table()?));
        methods.add_method("addRank", |_, _, (rank_id, name, level): (u32, String, u8)| {
            tracing::debug!("Guild:addRank({}, {}, {})", rank_id, name, level);
            Ok(())
        });
        methods.add_method("getRankById", |_, _, rank_id: u32| -> LuaResult<Value> { Ok(Value::Nil) });
        methods.add_method("getRankByLevel", |_, _, level: u8| -> LuaResult<Value> { Ok(Value::Nil) });
        methods.add_method("getMotd", |_, this, ()| Ok(this.motd.clone()));
        methods.add_method("setMotd", |_, _, motd: String| { tracing::debug!("Guild:setMotd({})", motd); Ok(()) });
    }
}

pub fn register(lua: &Lua) -> LuaResult<()> {
    let guild_ctor = lua.create_function(|_, id: u32| Ok(LuaGuild { id, ..Default::default() }))?;
    create_extensible_class(lua, "Guild", guild_ctor)?;
    Ok(())
}
