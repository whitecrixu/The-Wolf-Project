//! Monster userdata for Lua.

use mlua::{Lua, Result as LuaResult, UserData, UserDataMethods, Value};
use wolf_core::{CreatureId, Position};

use crate::class_registry::create_extensible_class;

use super::creature::LuaCreature;
use super::position::LuaPosition;

/// Monster wrapper for Lua.
#[derive(Debug, Clone)]
pub struct LuaMonster {
    pub creature: LuaCreature,
    pub monster_type_name: String,
    pub spawn_position: Position,
}

impl Default for LuaMonster {
    fn default() -> Self {
        Self {
            creature: LuaCreature::default(),
            monster_type_name: String::new(),
            spawn_position: Position::default(),
        }
    }
}

impl LuaMonster {
    pub fn new(id: CreatureId) -> Self {
        Self {
            creature: LuaCreature::new(id),
            ..Default::default()
        }
    }
}

impl UserData for LuaMonster {
    fn add_methods<M: UserDataMethods<Self>>(methods: &mut M) {
        // Type checks
        methods.add_method("isCreature", |_, _, ()| Ok(true));
        methods.add_method("isPlayer", |_, _, ()| Ok(false));
        methods.add_method("isMonster", |_, _, ()| Ok(true));
        methods.add_method("isNpc", |_, _, ()| Ok(false));
        
        // Inherited
        methods.add_method("getId", |_, this, ()| Ok(this.creature.id));
        methods.add_method("getName", |_, this, ()| Ok(this.creature.name.clone()));
        methods.add_method("getPosition", |_, this, ()| Ok(LuaPosition(this.creature.position)));
        methods.add_method("getHealth", |_, this, ()| Ok(this.creature.health));
        methods.add_method("getMaxHealth", |_, this, ()| Ok(this.creature.max_health));

        // Monster-specific
        methods.add_method("getType", |_, this, ()| -> LuaResult<Value> {
            tracing::debug!("Monster:getType()");
            Ok(Value::Nil)
        });
        
        methods.add_method("getSpawnPosition", |_, this, ()| {
            Ok(LuaPosition(this.spawn_position))
        });
        
        methods.add_method("isInSpawnRange", |_, this, pos: Option<LuaPosition>| {
            tracing::debug!("Monster:isInSpawnRange()");
            Ok(true)
        });
        
        methods.add_method("isIdle", |_, this, ()| Ok(true));
        methods.add_method("setIdle", |_, this, idle: bool| {
            tracing::debug!("Monster:setIdle({})", idle);
            Ok(())
        });
        
        methods.add_method("isTarget", |_, this, creature: Value| {
            tracing::debug!("Monster:isTarget()");
            Ok(false)
        });
        
        methods.add_method("isOpponent", |_, this, creature: Value| {
            tracing::debug!("Monster:isOpponent()");
            Ok(false)
        });
        
        methods.add_method("isFriend", |_, this, creature: Value| {
            tracing::debug!("Monster:isFriend()");
            Ok(false)
        });
        
        methods.add_method("addFriend", |_, this, creature: Value| {
            tracing::debug!("Monster:addFriend()");
            Ok(())
        });
        
        methods.add_method("removeFriend", |_, this, creature: Value| {
            tracing::debug!("Monster:removeFriend()");
            Ok(())
        });
        
        methods.add_method("getFriendList", |lua, this, ()| {
            Ok(lua.create_table()?)
        });
        
        methods.add_method("getFriendCount", |_, this, ()| Ok(0u32));
        
        methods.add_method("addTarget", |_, this, creature: Value| {
            tracing::debug!("Monster:addTarget()");
            Ok(())
        });
        
        methods.add_method("removeTarget", |_, this, creature: Value| {
            tracing::debug!("Monster:removeTarget()");
            Ok(())
        });
        
        methods.add_method("getTargetList", |lua, this, ()| {
            Ok(lua.create_table()?)
        });
        
        methods.add_method("getTargetCount", |_, this, ()| Ok(0u32));
        
        methods.add_method("selectTarget", |_, this, creature: Value| {
            tracing::debug!("Monster:selectTarget()");
            Ok(true)
        });
        
        methods.add_method("searchTarget", |_, this, search_type: Option<u8>| {
            tracing::debug!("Monster:searchTarget({:?})", search_type);
            Ok(true)
        });
    }
}

pub fn register(lua: &Lua) -> LuaResult<()> {
    let monster_ctor = lua.create_function(|_, id: CreatureId| {
        Ok(LuaMonster::new(id))
    })?;
    create_extensible_class(lua, "Monster", monster_ctor)?;
    Ok(())
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_monster_type_checks() {
        let lua = Lua::new();
        register(&lua).unwrap();
        
        lua.load(r#"
            local m = Monster(1)
            assert(m:isMonster() == true)
            assert(m:isPlayer() == false)
        "#).exec().unwrap();
    }
}
