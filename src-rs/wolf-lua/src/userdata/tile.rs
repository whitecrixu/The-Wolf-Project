//! Tile userdata for Lua.

use mlua::{Lua, Result as LuaResult, UserData, UserDataMethods, Value};
use wolf_core::Position;
use crate::class_registry::create_extensible_class;

use super::position::LuaPosition;

/// Tile wrapper for Lua.
#[derive(Debug, Clone)]
pub struct LuaTile {
    pub position: Position,
}

impl LuaTile {
    pub fn new(position: Position) -> Self {
        Self { position }
    }
}

impl UserData for LuaTile {
    fn add_methods<M: UserDataMethods<Self>>(methods: &mut M) {
        methods.add_method("getPosition", |_, this, ()| Ok(LuaPosition(this.position)));
        
        methods.add_method("getGround", |_, this, ()| -> LuaResult<Value> {
            tracing::debug!("Tile:getGround()");
            Ok(Value::Nil)
        });
        
        methods.add_method("getThing", |_, this, index: u32| -> LuaResult<Value> {
            tracing::debug!("Tile:getThing({})", index);
            Ok(Value::Nil)
        });
        
        methods.add_method("getThingCount", |_, this, ()| {
            tracing::debug!("Tile:getThingCount()");
            Ok(0u32)
        });
        
        methods.add_method("getTopVisibleThing", |_, this, creature: Option<Value>| -> LuaResult<Value> {
            Ok(Value::Nil)
        });
        
        methods.add_method("getTopTopItem", |_, this, ()| -> LuaResult<Value> {
            Ok(Value::Nil)
        });
        
        methods.add_method("getTopDownItem", |_, this, ()| -> LuaResult<Value> {
            Ok(Value::Nil)
        });
        
        methods.add_method("getFieldItem", |_, this, ()| -> LuaResult<Value> {
            Ok(Value::Nil)
        });
        
        methods.add_method("getItemById", |_, this, (item_id, sub_type): (u16, Option<i32>)| -> LuaResult<Value> {
            tracing::debug!("Tile:getItemById({}, {:?})", item_id, sub_type);
            Ok(Value::Nil)
        });
        
        methods.add_method("getItemByType", |_, this, item_type: u8| -> LuaResult<Value> {
            Ok(Value::Nil)
        });
        
        methods.add_method("getItemByTopOrder", |_, this, order: u8| -> LuaResult<Value> {
            Ok(Value::Nil)
        });
        
        methods.add_method("getItemCountById", |_, this, (item_id, sub_type): (u16, Option<i32>)| {
            Ok(0u32)
        });
        
        methods.add_method("getBottomCreature", |_, this, ()| -> LuaResult<Value> {
            Ok(Value::Nil)
        });
        
        methods.add_method("getTopCreature", |_, this, ()| -> LuaResult<Value> {
            Ok(Value::Nil)
        });
        
        methods.add_method("getBottomVisibleCreature", |_, this, creature: Option<Value>| -> LuaResult<Value> {
            Ok(Value::Nil)
        });
        
        methods.add_method("getTopVisibleCreature", |_, this, creature: Option<Value>| -> LuaResult<Value> {
            Ok(Value::Nil)
        });
        
        methods.add_method("getItems", |lua, this, ()| {
            Ok(lua.create_table()?)
        });
        
        methods.add_method("getItemCount", |_, this, ()| Ok(0u32));
        methods.add_method("getDownItemCount", |_, this, ()| Ok(0u32));
        methods.add_method("getTopItemCount", |_, this, ()| Ok(0u32));
        
        methods.add_method("getCreatures", |lua, this, ()| {
            Ok(lua.create_table()?)
        });
        
        methods.add_method("getCreatureCount", |_, this, ()| Ok(0u32));
        
        methods.add_method("getThingIndex", |_, this, thing: Value| {
            Ok(-1i32)
        });
        
        methods.add_method("hasProperty", |_, this, (property, item): (u32, Option<Value>)| {
            Ok(false)
        });
        
        methods.add_method("hasFlag", |_, this, flag: u32| {
            Ok(false)
        });
        
        methods.add_method("queryAdd", |_, this, (thing, flags): (Value, Option<u32>)| {
            Ok(0u8)
        });
        
        methods.add_method("getHouse", |_, this, ()| -> LuaResult<Value> {
            Ok(Value::Nil)
        });
    }
}

pub fn register(lua: &Lua) -> LuaResult<()> {
    let tile_ctor = lua.create_function(|_, (x, y, z): (u16, u16, u8)| {
        Ok(LuaTile::new(Position::new(x, y, z)))
    })?;
    
    create_extensible_class(lua, "Tile", tile_ctor)?;
    Ok(())
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::userdata::position;

    #[test]
    fn test_tile_position() {
        let lua = Lua::new();
        position::register(&lua).unwrap();
        register(&lua).unwrap();
        
        lua.load(r#"
            local t = Tile(100, 200, 7)
            local pos = t:getPosition()
            assert(pos.x == 100)
            assert(pos.y == 200)
            assert(pos.z == 7)
        "#).exec().unwrap();
    }
}
