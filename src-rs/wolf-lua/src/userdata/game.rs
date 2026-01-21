//! Game table for Lua.

use mlua::{Lua, Result as LuaResult, Table, Value};

use super::monstertype::LuaMonsterType;
use super::npctype::LuaNpcType;
use super::position::LuaPosition;

pub fn register(lua: &Lua) -> LuaResult<()> {
    let globals = lua.globals();
    let game = lua.create_table()?;
    
    game.set("getSpectators", lua.create_function(|lua, (pos, multi_floor, only_players, min_x, max_x, min_y, max_y): (LuaPosition, Option<bool>, Option<bool>, Option<i32>, Option<i32>, Option<i32>, Option<i32>)| {
        tracing::debug!("Game.getSpectators({:?})", pos.0);
        Ok(lua.create_table()?)
    })?)?;
    
    game.set("getPlayers", lua.create_function(|lua, ()| {
        Ok(lua.create_table()?)
    })?)?;
    
    game.set("loadMap", lua.create_function(|_, path: String| {
        tracing::debug!("Game.loadMap({})", path);
        Ok(())
    })?)?;
    
    game.set("getExperienceStage", lua.create_function(|_, level: u32| {
        tracing::debug!("Game.getExperienceStage({})", level);
        Ok(1.0f64)
    })?)?;
    
    game.set("getMonsterCount", lua.create_function(|_, ()| Ok(0u32))?)?;
    game.set("getPlayerCount", lua.create_function(|_, ()| Ok(0u32))?)?;
    game.set("getNpcCount", lua.create_function(|_, ()| Ok(0u32))?)?;
    
    game.set("getTowns", lua.create_function(|lua, ()| Ok(lua.create_table()?))?)?;
    game.set("getHouses", lua.create_function(|lua, ()| Ok(lua.create_table()?))?)?;
    
    game.set("getGameState", lua.create_function(|_, ()| Ok(2u8))?)?; // GAME_STATE_NORMAL
    game.set("setGameState", lua.create_function(|_, state: u8| {
        tracing::debug!("Game.setGameState({})", state);
        Ok(())
    })?)?;
    
    game.set("getWorldType", lua.create_function(|_, ()| Ok(0u8))?)?;
    game.set("setWorldType", lua.create_function(|_, world_type: u8| {
        tracing::debug!("Game.setWorldType({})", world_type);
        Ok(())
    })?)?;
    
    game.set("getReturnMessage", lua.create_function(|_, return_value: u8| {
        Ok(format!("Return value: {}", return_value))
    })?)?;
    
    game.set("createItem", lua.create_function(|_, (item_id, count, pos): (u16, Option<u32>, Option<LuaPosition>)| {
        tracing::debug!("Game.createItem({}, {:?}, {:?})", item_id, count, pos.map(|p| p.0));
        Ok(Value::Nil)
    })?)?;
    
    game.set("createContainer", lua.create_function(|_, (item_id, size, pos): (u16, Option<u32>, Option<LuaPosition>)| {
        tracing::debug!("Game.createContainer({}, {:?})", item_id, size);
        Ok(Value::Nil)
    })?)?;
    
    game.set("createMonster", lua.create_function(|_, (name, pos, extended, force, master): (String, LuaPosition, Option<bool>, Option<bool>, Option<Value>)| {
        tracing::debug!("Game.createMonster({}, {:?})", name, pos.0);
        Ok(Value::Nil)
    })?)?;
    
    game.set("createMonsterType", lua.create_function(|_, name: String| {
        Ok(LuaMonsterType::new(name))
    })?)?;
    
    game.set("createNpc", lua.create_function(|_, (name, pos, extended, force): (String, LuaPosition, Option<bool>, Option<bool>)| {
        tracing::debug!("Game.createNpc({}, {:?})", name, pos.0);
        Ok(Value::Nil)
    })?)?;
    
    game.set("createNpcType", lua.create_function(|_, name: String| {
        tracing::debug!("Game.createNpcType({}) -> returning LuaNpcType", name);
        Ok(LuaNpcType::new(name))
    })?)?;
    
    game.set("createTile", lua.create_function(|_, (x, y, z, create_dynamic): (u16, u16, u8, Option<bool>)| {
        tracing::debug!("Game.createTile({}, {}, {})", x, y, z);
        Ok(Value::Nil)
    })?)?;
    
    game.set("startRaid", lua.create_function(|_, name: String| {
        tracing::debug!("Game.startRaid({})", name);
        Ok(true)
    })?)?;
    
    game.set("getItemIdByClientId", lua.create_function(|_, client_id: u16| {
        tracing::debug!("Game.getItemIdByClientId({})", client_id);
        Ok(client_id)
    })?)?;
    
    game.set("hasDistanceEffect", lua.create_function(|_, effect_id: u8| {
        Ok(effect_id > 0 && effect_id < 60)
    })?)?;
    
    game.set("hasEffect", lua.create_function(|_, effect_id: u8| {
        Ok(effect_id > 0 && effect_id < 200)
    })?)?;
    
    globals.set("Game", game)?;
    Ok(())
}
