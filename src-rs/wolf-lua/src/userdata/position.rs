//! Position userdata for Lua.

use mlua::{Lua, MetaMethod, Result as LuaResult, UserData, UserDataMethods, Value, FromLua};
use wolf_core::Position;
use crate::class_registry::create_extensible_class;

/// Wrapper around Position for Lua.
#[derive(Debug, Clone, Copy)]
pub struct LuaPosition(pub Position);

impl LuaPosition {
    pub fn new(x: u16, y: u16, z: u8) -> Self {
        Self(Position::new(x, y, z))
    }

    /// Create from a Lua table {x, y, z} or Position userdata.
    pub fn from_lua_value(value: &Value) -> Option<Self> {
        match value {
            Value::Table(t) => {
                let x = t.get("x").ok()?;
                let y = t.get("y").ok()?;
                let z = t.get("z").ok()?;
                Some(Self::new(x, y, z))
            }
            Value::UserData(ud) => ud.borrow::<Self>().ok().map(|p| *p),
            _ => None,
        }
    }
}

impl FromLua for LuaPosition {
    fn from_lua(value: Value, _lua: &Lua) -> mlua::Result<Self> {
        match &value {
            Value::UserData(ud) => Ok(*ud.borrow::<Self>()?),
            Value::Table(t) => {
                let x: u16 = t.get("x")?;
                let y: u16 = t.get("y")?;
                let z: u8 = t.get("z")?;
                Ok(Self::new(x, y, z))
            }
            _ => Err(mlua::Error::FromLuaConversionError {
                from: value.type_name(),
                to: "Position".into(),
                message: Some("expected Position userdata or table {x, y, z}".into()),
            }),
        }
    }
}

impl UserData for LuaPosition {
    fn add_fields<F: mlua::UserDataFields<Self>>(fields: &mut F) {
        fields.add_field_method_get("x", |_, this| Ok(this.0.x));
        fields.add_field_method_set("x", |_, this, val| {
            this.0.x = val;
            Ok(())
        });
        fields.add_field_method_get("y", |_, this| Ok(this.0.y));
        fields.add_field_method_set("y", |_, this, val| {
            this.0.y = val;
            Ok(())
        });
        fields.add_field_method_get("z", |_, this| Ok(this.0.z));
        fields.add_field_method_set("z", |_, this, val| {
            this.0.z = val;
            Ok(())
        });
    }

    fn add_methods<M: UserDataMethods<Self>>(methods: &mut M) {
        // Metamethods
        methods.add_meta_method(MetaMethod::Eq, |_, this, other: Self| {
            Ok(this.0 == other.0)
        });

        methods.add_meta_method(MetaMethod::Add, |_, this, other: Self| {
            Ok(LuaPosition(this.0 + other.0))
        });

        methods.add_meta_method(MetaMethod::Sub, |_, this, other: Self| {
            Ok(LuaPosition(this.0 - other.0))
        });

        methods.add_meta_method(MetaMethod::ToString, |_, this, ()| {
            Ok(format!("Position({}, {}, {})", this.0.x, this.0.y, this.0.z))
        });

        // Methods
        methods.add_method("getDistance", |_, this, other: Self| {
            Ok(this.0.get_distance(&other.0))
        });

        methods.add_method("isSightClear", |_, this, (other, check_floor): (Self, Option<bool>)| {
            let check_floor = check_floor.unwrap_or(true);
            Ok(this.0.is_sight_clear(&other.0, check_floor))
        });

        methods.add_method("sendMagicEffect", |_, this, effect: u8| {
            tracing::debug!("Position:sendMagicEffect({}) at {:?}", effect, this.0);
            Ok(true)
        });

        methods.add_method("sendDistanceEffect", |_, this, (target, effect): (Self, u8)| {
            tracing::debug!("Position:sendDistanceEffect({}) from {:?} to {:?}", effect, this.0, target.0);
            Ok(true)
        });
    }
}

/// Register the Position class.
pub fn register(lua: &Lua) -> LuaResult<()> {
    let position_ctor = lua.create_function(|_, (x, y, z, _stackpos): (Option<u16>, Option<u16>, Option<u8>, Option<u8>)| {
        Ok(LuaPosition::new(
            x.unwrap_or(0),
            y.unwrap_or(0),
            z.unwrap_or(0),
        ))
    })?;
    
    create_extensible_class(lua, "Position", position_ctor)?;
    Ok(())
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_position_constructor() {
        let lua = Lua::new();
        register(&lua).unwrap();
        
        lua.load(r#"
            local pos = Position(100, 200, 7)
            assert(pos.x == 100)
            assert(pos.y == 200)
            assert(pos.z == 7)
        "#).exec().unwrap();
    }

    #[test]
    fn test_position_distance() {
        let lua = Lua::new();
        register(&lua).unwrap();
        
        let result: i32 = lua.load(r#"
            local pos1 = Position(100, 100, 7)
            local pos2 = Position(105, 103, 7)
            return pos1:getDistance(pos2)
        "#).eval().unwrap();
        
        assert_eq!(result, 5);
    }

    #[test]
    fn test_position_add_sub() {
        let lua = Lua::new();
        register(&lua).unwrap();
        
        lua.load(r#"
            local pos1 = Position(100, 100, 7)
            local pos2 = Position(5, 3, 0)
            local sum = pos1 + pos2
            assert(sum.x == 105)
            assert(sum.y == 103)
            assert(sum.z == 7)
            
            local diff = pos1 - pos2
            assert(diff.x == 95)
            assert(diff.y == 97)
            assert(diff.z == 7)
        "#).exec().unwrap();
    }
}
