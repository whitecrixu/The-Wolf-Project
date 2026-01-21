//! Party userdata for Lua.

use mlua::{Lua, Result as LuaResult, UserData, UserDataMethods, Value};

use crate::class_registry::create_extensible_class;

#[derive(Debug, Clone, Default)]
pub struct LuaParty {
    pub leader_id: u32,
}

impl UserData for LuaParty {
    fn add_methods<M: UserDataMethods<Self>>(methods: &mut M) {
        methods.add_method("disband", |_, _, ()| { tracing::debug!("Party:disband()"); Ok(true) });
        methods.add_method("getLeader", |_, _, ()| -> LuaResult<Value> { Ok(Value::Nil) });
        methods.add_method("setLeader", |_, _, leader: Value| { tracing::debug!("Party:setLeader()"); Ok(true) });
        methods.add_method("getMembers", |lua, _, ()| Ok(lua.create_table()?));
        methods.add_method("getMemberCount", |_, _, ()| Ok(0u32));
        methods.add_method("getInvitees", |lua, _, ()| Ok(lua.create_table()?));
        methods.add_method("getInviteeCount", |_, _, ()| Ok(0u32));
        methods.add_method("addInvite", |_, _, player: Value| { tracing::debug!("Party:addInvite()"); Ok(true) });
        methods.add_method("removeInvite", |_, _, player: Value| { tracing::debug!("Party:removeInvite()"); Ok(true) });
        methods.add_method("addMember", |_, _, player: Value| { tracing::debug!("Party:addMember()"); Ok(true) });
        methods.add_method("removeMember", |_, _, player: Value| { tracing::debug!("Party:removeMember()"); Ok(true) });
        methods.add_method("isSharedExperienceActive", |_, _, ()| Ok(false));
        methods.add_method("isSharedExperienceEnabled", |_, _, ()| Ok(false));
        methods.add_method("shareExperience", |_, _, exp: u64| { tracing::debug!("Party:shareExperience({})", exp); Ok(true) });
        methods.add_method("setSharedExperience", |_, _, active: bool| { tracing::debug!("Party:setSharedExperience({})", active); Ok(true) });
    }
}

pub fn register(lua: &Lua) -> LuaResult<()> {
    let party_ctor = lua.create_function(|_, leader: Value| Ok(LuaParty::default()))?;
    create_extensible_class(lua, "Party", party_ctor)?;
    Ok(())
}
