//! Container userdata for Lua (extends Item).

use mlua::{Lua, Result as LuaResult, UserData, UserDataMethods, Value};

use super::item::LuaItem;
use crate::class_registry::create_extensible_class;

/// Container wrapper for Lua.
#[derive(Debug, Clone)]
pub struct LuaContainer {
    pub item: LuaItem,
    pub capacity: u32,
}

impl Default for LuaContainer {
    fn default() -> Self {
        Self {
            item: LuaItem::default(),
            capacity: 20,
        }
    }
}

impl UserData for LuaContainer {
    fn add_methods<M: UserDataMethods<Self>>(methods: &mut M) {
        // Inherited from Item
        methods.add_method("isItem", |_, _, ()| Ok(true));
        methods.add_method("getId", |_, this, ()| Ok(this.item.item_id));
        methods.add_method("getCount", |_, this, ()| Ok(this.item.count));

        // Container-specific
        methods.add_method("getSize", |_, this, ()| {
            tracing::debug!("Container:getSize()");
            Ok(0u32)
        });
        
        methods.add_method("getCapacity", |_, this, ()| Ok(this.capacity));
        
        methods.add_method("getEmptySlots", |_, this, recursive: Option<bool>| {
            tracing::debug!("Container:getEmptySlots({:?})", recursive);
            Ok(this.capacity)
        });
        
        methods.add_method("getItemHoldingCount", |_, this, ()| {
            tracing::debug!("Container:getItemHoldingCount()");
            Ok(0u32)
        });
        
        methods.add_method("getItemCountById", |_, this, (item_id, sub_type): (u16, Option<i32>)| {
            tracing::debug!("Container:getItemCountById({}, {:?})", item_id, sub_type);
            Ok(0u32)
        });
        
        methods.add_method("getItem", |_, this, index: u32| -> LuaResult<Value> {
            tracing::debug!("Container:getItem({})", index);
            Ok(Value::Nil)
        });
        
        methods.add_method("hasItem", |_, this, item: Value| {
            tracing::debug!("Container:hasItem()");
            Ok(false)
        });
        
        methods.add_method("addItem", |_, this, (item_id, count, index, flags): (u16, Option<u32>, Option<i32>, Option<u32>)| {
            tracing::debug!("Container:addItem({}, {:?}, {:?}, {:?})", item_id, count, index, flags);
            Ok(Value::Nil)
        });
        
        methods.add_method("addItemEx", |_, this, (item, index, flags): (Value, Option<i32>, Option<u32>)| {
            tracing::debug!("Container:addItemEx()");
            Ok(0u8)
        });
    }
}

pub fn register(lua: &Lua) -> LuaResult<()> {
    let container_ctor = lua.create_function(|_, uid: u32| {
        Ok(LuaContainer {
            item: LuaItem::new(uid),
            ..Default::default()
        })
    })?;
    
    create_extensible_class(lua, "Container", container_ctor)?;
    Ok(())
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_container_capacity() {
        let lua = Lua::new();
        register(&lua).unwrap();
        
        let cap: u32 = lua.load(r#"
            local c = Container(1)
            return c:getCapacity()
        "#).eval().unwrap();
        
        assert_eq!(cap, 20);
    }
}
