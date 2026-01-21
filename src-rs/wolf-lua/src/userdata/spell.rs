//! Spell userdata for Lua (RevScriptSys).

use mlua::{Lua, Result as LuaResult, UserData, UserDataMethods, Function};

use crate::class_registry::create_extensible_class;

#[derive(Debug, Clone, Default)]
pub struct LuaSpell {
    pub name: String,
    pub words: String,
}

impl UserData for LuaSpell {
    fn add_methods<M: UserDataMethods<Self>>(methods: &mut M) {
        methods.add_method("onCastSpell", |_, this, callback: Function| { tracing::debug!("Spell:onCastSpell()"); Ok(this.clone()) });
        methods.add_method("register", |_, this, ()| { tracing::debug!("Spell:register()"); Ok(true) });
        methods.add_method("name", |_, this, name: String| Ok(this.clone()));
        methods.add_method("id", |_, this, id: u16| Ok(this.clone()));
        methods.add_method("group", |_, this, group: String| Ok(this.clone()));
        methods.add_method("secondaryGroup", |_, this, group: String| Ok(this.clone()));
        methods.add_method("cooldown", |_, this, ms: u32| Ok(this.clone()));
        methods.add_method("groupCooldown", |_, this, ms: u32| Ok(this.clone()));
        methods.add_method("secondaryGroupCooldown", |_, this, ms: u32| Ok(this.clone()));
        methods.add_method("level", |_, this, lvl: u32| Ok(this.clone()));
        methods.add_method("magicLevel", |_, this, lvl: u32| Ok(this.clone()));
        methods.add_method("mana", |_, this, mana: u32| Ok(this.clone()));
        methods.add_method("manaPercent", |_, this, pct: u8| Ok(this.clone()));
        methods.add_method("soul", |_, this, soul: u8| Ok(this.clone()));
        methods.add_method("range", |_, this, range: u8| Ok(this.clone()));
        methods.add_method("isPremium", |_, this, v: bool| Ok(this.clone()));
        methods.add_method("isEnabled", |_, this, v: bool| Ok(this.clone()));
        methods.add_method("needTarget", |_, this, v: bool| Ok(this.clone()));
        methods.add_method("needWeapon", |_, this, v: bool| Ok(this.clone()));
        methods.add_method("needLearn", |_, this, v: bool| Ok(this.clone()));
        methods.add_method("isSelfTarget", |_, this, v: bool| Ok(this.clone()));
        methods.add_method("isBlocking", |_, this, v: bool| Ok(this.clone()));
        methods.add_method("isAggressive", |_, this, v: bool| Ok(this.clone()));
        methods.add_method("vocation", |_, this, voc: String| Ok(this.clone()));
        methods.add_method("words", |_, this, words: String| Ok(this.clone()));
        methods.add_method("needDirection", |_, this, v: bool| Ok(this.clone()));
        methods.add_method("hasParams", |_, this, v: bool| Ok(this.clone()));
        methods.add_method("hasPlayerNameParam", |_, this, v: bool| Ok(this.clone()));
        methods.add_method("blockWalls", |_, this, v: bool| Ok(this.clone()));
        // RuneSpell
        methods.add_method("runeId", |_, this, id: u16| Ok(this.clone()));
        methods.add_method("charges", |_, this, charges: u8| Ok(this.clone()));
        methods.add_method("allowFarUse", |_, this, v: bool| Ok(this.clone()));
        methods.add_method("blockType", |_, this, v: String| Ok(this.clone()));
    }
}

pub fn register(lua: &Lua) -> LuaResult<()> {
    let spell_ctor = lua.create_function(|_, ()| Ok(LuaSpell::default()))?;
    create_extensible_class(lua, "Spell", spell_ctor)?;
    Ok(())
}
