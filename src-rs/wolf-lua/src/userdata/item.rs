//! Item userdata for Lua.

use mlua::{Lua, Result as LuaResult, UserData, UserDataMethods, Value};
use crate::class_registry::create_extensible_class;
use wolf_core::Position;

use super::position::LuaPosition;

/// Item wrapper for Lua.
#[derive(Debug, Clone)]
pub struct LuaItem {
    pub uid: u32,
    pub item_id: u16,
    pub count: u32,
    pub action_id: u16,
    pub unique_id: u16,
    pub position: Position,
}

impl Default for LuaItem {
    fn default() -> Self {
        Self {
            uid: 0,
            item_id: 0,
            count: 1,
            action_id: 0,
            unique_id: 0,
            position: Position::default(),
        }
    }
}

impl LuaItem {
    pub fn new(uid: u32) -> Self {
        Self {
            uid,
            ..Default::default()
        }
    }
}

impl UserData for LuaItem {
    fn add_methods<M: UserDataMethods<Self>>(methods: &mut M) {
        methods.add_method("isItem", |_, _, ()| Ok(true));
        
        methods.add_method("getParent", |_, this, ()| -> LuaResult<Value> {
            Ok(Value::Nil)
        });
        
        methods.add_method("getTopParent", |_, this, ()| -> LuaResult<Value> {
            Ok(Value::Nil)
        });
        
        methods.add_method("getId", |_, this, ()| Ok(this.item_id));
        
        methods.add_method("clone", |_, this, ()| {
            Ok(LuaItem {
                uid: 0, // New UID would be assigned
                ..this.clone()
            })
        });
        
        methods.add_method("split", |_, this, count: Option<u32>| {
            tracing::debug!("Item:split({:?})", count);
            Ok(Value::Nil)
        });
        
        methods.add_method("remove", |_, this, count: Option<u32>| {
            tracing::debug!("Item:remove({:?})", count);
            Ok(true)
        });
        
        methods.add_method("getUniqueId", |_, this, ()| Ok(this.unique_id));
        methods.add_method("getActionId", |_, this, ()| Ok(this.action_id));
        methods.add_method("setActionId", |_, this, action_id: u16| {
            tracing::debug!("Item:setActionId({})", action_id);
            Ok(())
        });
        
        methods.add_method("getCount", |_, this, ()| Ok(this.count));
        methods.add_method("getCharges", |_, this, ()| Ok(this.count));
        methods.add_method("getFluidType", |_, this, ()| Ok(0u8));
        methods.add_method("getWeight", |_, this, ()| Ok(0u32));
        methods.add_method("getSubType", |_, this, ()| Ok(this.count));
        
        methods.add_method("getName", |_, this, ()| Ok(String::new()));
        methods.add_method("getPluralName", |_, this, ()| Ok(String::new()));
        methods.add_method("getArticle", |_, this, ()| Ok(String::new()));
        
        methods.add_method("getPosition", |_, this, ()| Ok(LuaPosition(this.position)));
        
        methods.add_method("getTile", |_, this, ()| -> LuaResult<Value> {
            Ok(Value::Nil)
        });
        
        methods.add_method("hasAttribute", |_, this, attr: u32| {
            tracing::debug!("Item:hasAttribute({})", attr);
            Ok(false)
        });
        
        methods.add_method("getAttribute", |_, this, attr: u32| -> LuaResult<Value> {
            tracing::debug!("Item:getAttribute({})", attr);
            Ok(Value::Nil)
        });
        
        methods.add_method("setAttribute", |_, this, (attr, value): (u32, Value)| {
            tracing::debug!("Item:setAttribute({}, {:?})", attr, value);
            Ok(true)
        });
        
        methods.add_method("removeAttribute", |_, this, attr: u32| {
            tracing::debug!("Item:removeAttribute({})", attr);
            Ok(true)
        });
        
        methods.add_method("serializeAttributes", |lua, this, ()| {
            lua.create_string(&[])
        });
        
        methods.add_method("moveTo", |_, this, (target, flags): (Value, Option<u32>)| {
            tracing::debug!("Item:moveTo()");
            Ok(0u8)
        });
        
        methods.add_method("transform", |_, this, (item_id, count): (u16, Option<u32>)| {
            tracing::debug!("Item:transform({}, {:?})", item_id, count);
            Ok(true)
        });
        
        methods.add_method("decay", |_, this, decay_to: Option<i32>| {
            tracing::debug!("Item:decay({:?})", decay_to);
            Ok(())
        });
        
        methods.add_method("moveToSlot", |_, this, (creature, slot): (Value, u8)| {
            tracing::debug!("Item:moveToSlot({:?}, {})", creature, slot);
            Ok(true)
        });
        
        methods.add_method("getDescription", |_, this, distance: Option<i32>| {
            Ok(String::from("You see an item."))
        });
        
        methods.add_method("hasProperty", |_, this, property: u32| {
            tracing::debug!("Item:hasProperty({})", property);
            Ok(false)
        });
    }
}

pub fn register(lua: &Lua) -> LuaResult<()> {
    let item_ctor = lua.create_function(|_, uid: u32| {
        Ok(LuaItem::new(uid))
    })?;
    
    create_extensible_class(lua, "Item", item_ctor)?;
    Ok(())
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::userdata::position;

    #[test]
    fn test_item_basic() {
        let lua = Lua::new();
        position::register(&lua).unwrap();
        register(&lua).unwrap();
        
        lua.load(r#"
            local item = Item(1)
            assert(item:isItem() == true)
        "#).exec().unwrap();
    }
}
