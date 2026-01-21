//! Variant userdata for Lua - polymorphic value type.

use mlua::{Lua, Result as LuaResult, UserData, UserDataMethods, Value};
use wolf_core::{LuaVariant, Position};

use super::position::LuaPosition;

/// Lua Variant - can hold different value types.
#[derive(Debug, Clone)]
pub struct LuaVariantWrapper(pub LuaVariant);

impl UserData for LuaVariantWrapper {
    fn add_methods<M: UserDataMethods<Self>>(methods: &mut M) {
        methods.add_method("getNumber", |_, this, ()| {
            match &this.0 {
                LuaVariant::Number(n) => Ok(*n),
                _ => Ok(0),
            }
        });

        methods.add_method("getString", |_, this, ()| {
            match &this.0 {
                LuaVariant::String(s) => Ok(s.clone()),
                _ => Ok(String::new()),
            }
        });

        methods.add_method("getPosition", |_, this, ()| {
            match &this.0 {
                LuaVariant::Position(p) => Ok(LuaPosition(*p)),
                _ => Ok(LuaPosition::new(0, 0, 0)),
            }
        });
    }
}

/// Register the Variant class.
pub fn register(lua: &Lua) -> LuaResult<()> {
    let globals = lua.globals();
    
    // Constructor for number variant
    let variant_number = lua.create_function(|_, n: i64| {
        Ok(LuaVariantWrapper(LuaVariant::Number(n)))
    })?;
    
    // Constructor for string variant
    let variant_string = lua.create_function(|_, s: String| {
        Ok(LuaVariantWrapper(LuaVariant::String(s)))
    })?;
    
    // Constructor for position variant
    let variant_position = lua.create_function(|_, pos: LuaPosition| {
        Ok(LuaVariantWrapper(LuaVariant::Position(pos.0)))
    })?;
    
    // Create Variant table with factory methods
    let variant = lua.create_table()?;
    variant.set("number", variant_number)?;
    variant.set("string", variant_string)?;
    variant.set("position", variant_position)?;
    
    globals.set("Variant", variant)?;
    
    Ok(())
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::userdata::position;

    #[test]
    fn test_variant_number() {
        let lua = Lua::new();
        position::register(&lua).unwrap();
        register(&lua).unwrap();
        
        let result: i64 = lua.load(r#"
            local v = Variant.number(42)
            return v:getNumber()
        "#).eval().unwrap();
        
        assert_eq!(result, 42);
    }

    #[test]
    fn test_variant_string() {
        let lua = Lua::new();
        position::register(&lua).unwrap();
        register(&lua).unwrap();
        
        let result: String = lua.load(r#"
            local v = Variant.string("hello")
            return v:getString()
        "#).eval().unwrap();
        
        assert_eq!(result, "hello");
    }
}
