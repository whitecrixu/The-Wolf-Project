//! UserData types for Lua - game objects exposed to scripts.

pub mod meta_helpers;
pub mod position;
pub mod creature;
pub mod player;
pub mod monster;
pub mod npc;
pub mod item;
pub mod container;
pub mod tile;
pub mod teleport;
pub mod combat;
pub mod condition;
pub mod game;
pub mod guild;
pub mod party;
pub mod house;
pub mod town;
pub mod vocation;
pub mod itemtype;
pub mod monstertype;
pub mod npctype;
pub mod spell;
pub mod action;
pub mod moveevent;
pub mod talkaction;
pub mod creatureevent;
pub mod globalevent;
pub mod variant;
pub mod networkmessage;
pub mod modalwindow;

use mlua::{Lua, Result as LuaResult};

/// Register all userdata types with the Lua state.
pub fn register_userdata(lua: &Lua) -> LuaResult<()> {
    position::register(lua)?;
    variant::register(lua)?;
    creature::register(lua)?;
    player::register(lua)?;
    monster::register(lua)?;
    npc::register(lua)?;
    item::register(lua)?;
    container::register(lua)?;
    tile::register(lua)?;
    teleport::register(lua)?;
    combat::register(lua)?;
    condition::register(lua)?;
    game::register(lua)?;
    guild::register(lua)?;
    party::register(lua)?;
    house::register(lua)?;
    town::register(lua)?;
    vocation::register(lua)?;
    itemtype::register(lua)?;
    monstertype::register(lua)?;
    npctype::register(lua)?;
    spell::register(lua)?;
    action::register(lua)?;
    moveevent::register(lua)?;
    talkaction::register(lua)?;
    creatureevent::register(lua)?;
    globalevent::register(lua)?;
    networkmessage::register(lua)?;
    modalwindow::register(lua)?;
    
    tracing::debug!("Registered all Lua userdata types");
    Ok(())
}
