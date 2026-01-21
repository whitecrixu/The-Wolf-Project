//! NpcType userdata for Lua.

use mlua::{Lua, Result as LuaResult, UserData, UserDataMethods, Function};

use crate::class_registry::create_extensible_class;

#[derive(Debug, Clone, Default)]
pub struct LuaNpcType {
    pub name: String,
}

impl LuaNpcType {
    pub fn new(name: String) -> Self {
        Self { name }
    }
}

impl UserData for LuaNpcType {
    fn add_methods<M: UserDataMethods<Self>>(methods: &mut M) {
        methods.add_method("name", |_, this, name: String| Ok(this.clone()));
        methods.add_method("nameDescription", |_, this, desc: String| Ok(this.clone()));
        methods.add_method("health", |_, this, hp: i32| Ok(this.clone()));
        methods.add_method("maxHealth", |_, this, hp: i32| Ok(this.clone()));
        methods.add_method("speed", |_, this, speed: u32| Ok(this.clone()));
        methods.add_method("outfit", |_, this, outfit: mlua::Table| Ok(this.clone()));
        methods.add_method("walkInterval", |_, this, interval: u32| Ok(this.clone()));
        methods.add_method("walkRadius", |_, this, radius: u32| Ok(this.clone()));
        methods.add_method("floorChange", |_, this, v: bool| Ok(this.clone()));
        methods.add_method("attackable", |_, this, v: bool| Ok(this.clone()));
        methods.add_method("ignoreHeight", |_, this, v: bool| Ok(this.clone()));
        methods.add_method("pushable", |_, this, v: bool| Ok(this.clone()));
        methods.add_method("speechBubble", |_, this, bubble: u8| Ok(this.clone()));
        methods.add_method("script", |_, this, script: String| Ok(this.clone()));
        methods.add_method("parameter", |_, this, (key, value): (String, mlua::Value)| Ok(this.clone()));
        methods.add_method("register", |_, this, ()| { tracing::debug!("NpcType:register()"); Ok(true) });
        
        // Event callbacks
        methods.add_method("onThink", |_, this, callback: Function| Ok(this.clone()));
        methods.add_method("onAppear", |_, this, callback: Function| Ok(this.clone()));
        methods.add_method("onDisappear", |_, this, callback: Function| Ok(this.clone()));
        methods.add_method("onMove", |_, this, callback: Function| Ok(this.clone()));
        methods.add_method("onSay", |_, this, callback: Function| Ok(this.clone()));
        methods.add_method("onCloseChannel", |_, this, callback: Function| Ok(this.clone()));
    }
}

pub fn register(lua: &Lua) -> LuaResult<()> {
    let npctype_ctor = lua.create_function(|_, name: String| Ok(LuaNpcType { name }))?;
    create_extensible_class(lua, "NpcType", npctype_ctor)?;
    Ok(())
}
