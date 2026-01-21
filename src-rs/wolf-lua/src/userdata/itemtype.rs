//! ItemType userdata for Lua.

use mlua::{Lua, Result as LuaResult, UserData, UserDataMethods, Value};
use crate::class_registry::create_extensible_class;

#[derive(Debug, Clone)]
pub struct LuaItemType {
    pub id: u16,
    pub client_id: u16,
    pub name: String,
}

impl Default for LuaItemType {
    fn default() -> Self {
        Self { id: 0, client_id: 0, name: String::new() }
    }
}

impl UserData for LuaItemType {
    fn add_methods<M: UserDataMethods<Self>>(methods: &mut M) {
        methods.add_method("isCorpse", |_, _, ()| Ok(false));
        methods.add_method("isDoor", |_, _, ()| Ok(false));
        methods.add_method("isContainer", |_, _, ()| Ok(false));
        methods.add_method("isFluidContainer", |_, _, ()| Ok(false));
        methods.add_method("isMovable", |_, _, ()| Ok(true));
        methods.add_method("isRune", |_, _, ()| Ok(false));
        methods.add_method("isStackable", |_, _, ()| Ok(false));
        methods.add_method("isReadable", |_, _, ()| Ok(false));
        methods.add_method("isWritable", |_, _, ()| Ok(false));
        methods.add_method("getType", |_, _, ()| Ok(0u8));
        methods.add_method("getId", |_, this, ()| Ok(this.id));
        methods.add_method("getClientId", |_, this, ()| Ok(this.client_id));
        methods.add_method("getName", |_, this, ()| Ok(this.name.clone()));
        methods.add_method("getPluralName", |_, _, ()| Ok(String::new()));
        methods.add_method("getArticle", |_, _, ()| Ok(String::new()));
        methods.add_method("getDescription", |_, _, ()| Ok(String::new()));
        methods.add_method("getSlotPosition", |_, _, ()| Ok(0u32));
        methods.add_method("getCharges", |_, _, ()| Ok(0u32));
        methods.add_method("getFluidSource", |_, _, ()| Ok(0u8));
        methods.add_method("getCapacity", |_, _, ()| Ok(0u32));
        methods.add_method("getWeight", |_, _, ()| Ok(0u32));
        methods.add_method("getHitChance", |_, _, ()| Ok(0i32));
        methods.add_method("getShootRange", |_, _, ()| Ok(0u8));
        methods.add_method("getAttack", |_, _, ()| Ok(0i32));
        methods.add_method("getDefense", |_, _, ()| Ok(0i32));
        methods.add_method("getExtraDefense", |_, _, ()| Ok(0i32));
        methods.add_method("getArmor", |_, _, ()| Ok(0i32));
        methods.add_method("getWeaponType", |_, _, ()| Ok(0u8));
        methods.add_method("getElementType", |_, _, ()| Ok(0u16));
        methods.add_method("getElementDamage", |_, _, ()| Ok(0i32));
        methods.add_method("getTransformEquipId", |_, _, ()| Ok(0u16));
        methods.add_method("getTransformDeEquipId", |_, _, ()| Ok(0u16));
        methods.add_method("getDestroyId", |_, _, ()| Ok(0u16));
        methods.add_method("getDecayId", |_, _, ()| Ok(0u16));
        methods.add_method("getDecayTime", |_, _, ()| Ok(0u32));
        methods.add_method("getShowDuration", |_, _, ()| Ok(false));
        methods.add_method("getRequiredLevel", |_, _, ()| Ok(0u32));
        methods.add_method("getSpeed", |_, _, ()| Ok(0i32));
        methods.add_method("getBaseSpeed", |_, _, ()| Ok(0i32));
        methods.add_method("hasSubType", |_, _, ()| Ok(false));
    }
}

pub fn register(lua: &Lua) -> LuaResult<()> {
    let itemtype_ctor = lua.create_function(|_, id: u16| Ok(LuaItemType { id, ..Default::default() }))?;
    create_extensible_class(lua, "ItemType", itemtype_ctor)?;
    Ok(())
}
