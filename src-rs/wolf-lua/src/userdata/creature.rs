//! Creature userdata for Lua - base class for Player, Monster, NPC.

use mlua::{Lua, Result as LuaResult, UserData, UserDataMethods, Value, FromLua};
use crate::class_registry::create_extensible_class;
use wolf_core::{CreatureId, Direction, Position, Skull};

use super::position::LuaPosition;

/// Creature wrapper for Lua.
/// This is a stub implementation - in production, would hold a reference to actual game state.
#[derive(Debug, Clone)]
pub struct LuaCreature {
    pub id: CreatureId,
    pub name: String,
    pub health: i32,
    pub max_health: i32,
    pub mana: i32,
    pub max_mana: i32,
    pub position: Position,
    pub direction: Direction,
    pub skull: Skull,
    pub speed: u32,
    pub base_speed: u32,
}

impl Default for LuaCreature {
    fn default() -> Self {
        Self {
            id: 0,
            name: String::new(),
            health: 100,
            max_health: 100,
            mana: 0,
            max_mana: 0,
            position: Position::default(),
            direction: Direction::South,
            skull: Skull::None,
            speed: 220,
            base_speed: 220,
        }
    }
}

impl LuaCreature {
    pub fn new(id: CreatureId) -> Self {
        Self {
            id,
            ..Default::default()
        }
    }

    pub fn with_name(mut self, name: impl Into<String>) -> Self {
        self.name = name.into();
        self
    }
}

impl FromLua for LuaCreature {
    fn from_lua(value: Value, _lua: &Lua) -> mlua::Result<Self> {
        match &value {
            Value::UserData(ud) => Ok(ud.borrow::<Self>()?.clone()),
            Value::Integer(id) => Ok(Self::new(*id as CreatureId)),
            _ => Err(mlua::Error::FromLuaConversionError {
                from: value.type_name(),
                to: "Creature".into(),
                message: Some("expected Creature userdata or creature id".into()),
            }),
        }
    }
}

impl UserData for LuaCreature {
    fn add_methods<M: UserDataMethods<Self>>(methods: &mut M) {
        // Type checks
        methods.add_method("isCreature", |_, _, ()| Ok(true));
        methods.add_method("isPlayer", |_, _, ()| Ok(false));
        methods.add_method("isMonster", |_, _, ()| Ok(false));
        methods.add_method("isNpc", |_, _, ()| Ok(false));
        methods.add_method("isRemoved", |_, _, ()| Ok(false));
        methods.add_method("isInGhostMode", |_, _, ()| Ok(false));

        // Identity
        methods.add_method("getId", |_, this, ()| Ok(this.id));
        methods.add_method("getName", |_, this, ()| Ok(this.name.clone()));

        // Position & movement
        methods.add_method("getPosition", |_, this, ()| Ok(LuaPosition(this.position)));
        methods.add_method("getDirection", |_, this, ()| Ok(this.direction as u8));
        methods.add_method("setDirection", |_, this, dir: u8| {
            // this.direction = Direction from u8
            tracing::debug!("Creature:setDirection({})", dir);
            Ok(true)
        });

        // Health
        methods.add_method("getHealth", |_, this, ()| Ok(this.health));
        methods.add_method("getMaxHealth", |_, this, ()| Ok(this.max_health));
        methods.add_method("setMaxHealth", |_, this, value: i32| {
            tracing::debug!("Creature:setMaxHealth({})", value);
            Ok(())
        });
        methods.add_method("addHealth", |_, this, value: i32| {
            tracing::debug!("Creature:addHealth({})", value);
            Ok(())
        });
        methods.add_method("isHealthHidden", |_, _, ()| Ok(false));
        methods.add_method("setHiddenHealth", |_, _, hidden: bool| {
            tracing::debug!("Creature:setHiddenHealth({})", hidden);
            Ok(())
        });

        // Mana
        methods.add_method("getMana", |_, this, ()| Ok(this.mana));
        methods.add_method("getMaxMana", |_, this, ()| Ok(this.max_mana));
        methods.add_method("addMana", |_, this, (value, animate): (i32, Option<bool>)| {
            tracing::debug!("Creature:addMana({}, {:?})", value, animate);
            Ok(())
        });

        // Speed
        methods.add_method("getSpeed", |_, this, ()| Ok(this.speed));
        methods.add_method("getBaseSpeed", |_, this, ()| Ok(this.base_speed));
        methods.add_method("changeSpeed", |_, this, delta: i32| {
            tracing::debug!("Creature:changeSpeed({})", delta);
            Ok(())
        });

        // Skull
        methods.add_method("getSkull", |_, this, ()| Ok(this.skull as u8));
        methods.add_method("setSkull", |_, this, skull: u8| {
            tracing::debug!("Creature:setSkull({})", skull);
            Ok(())
        });

        // Outfit
        methods.add_method("getOutfit", |lua, this, ()| {
            let outfit = lua.create_table()?;
            outfit.set("lookType", 128u16)?;
            outfit.set("lookTypeEx", 0u16)?;
            outfit.set("lookHead", 0u8)?;
            outfit.set("lookBody", 0u8)?;
            outfit.set("lookLegs", 0u8)?;
            outfit.set("lookFeet", 0u8)?;
            outfit.set("lookAddons", 0u8)?;
            outfit.set("lookMount", 0u16)?;
            Ok(outfit)
        });
        methods.add_method("setOutfit", |_, this, outfit: mlua::Table| {
            tracing::debug!("Creature:setOutfit()");
            Ok(())
        });

        // Light
        methods.add_method("getLight", |lua, this, ()| {
            let light = lua.create_table()?;
            light.set("level", 0u8)?;
            light.set("color", 0u8)?;
            Ok(light)
        });
        methods.add_method("setLight", |_, this, (level, color): (u8, u8)| {
            tracing::debug!("Creature:setLight({}, {})", level, color);
            Ok(())
        });

        // Visibility
        methods.add_method("canSee", |_, this, pos: LuaPosition| {
            tracing::debug!("Creature:canSee({:?})", pos.0);
            Ok(true)
        });
        methods.add_method("canSeeCreature", |_, this, creature: LuaCreature| {
            tracing::debug!("Creature:canSeeCreature({})", creature.id);
            Ok(true)
        });

        // Targeting
        methods.add_method("getTarget", |_, this, ()| -> LuaResult<Value> {
            Ok(Value::Nil)
        });
        methods.add_method("setTarget", |_, this, target: Value| {
            tracing::debug!("Creature:setTarget()");
            Ok(true)
        });
        methods.add_method("getFollowCreature", |_, this, ()| -> LuaResult<Value> {
            Ok(Value::Nil)
        });
        methods.add_method("setFollowCreature", |_, this, target: Value| {
            tracing::debug!("Creature:setFollowCreature()");
            Ok(true)
        });

        // Master (for summons)
        methods.add_method("getMaster", |_, this, ()| -> LuaResult<Value> {
            Ok(Value::Nil)
        });
        methods.add_method("setMaster", |_, this, master: Value| {
            tracing::debug!("Creature:setMaster()");
            Ok(true)
        });

        // Lock
        methods.add_method("isMoveLocked", |_, _, ()| Ok(false));
        methods.add_method("setMoveLocked", |_, this, locked: bool| {
            tracing::debug!("Creature:setMoveLocked({})", locked);
            Ok(())
        });
        methods.add_method("setDropLoot", |_, this, drop: bool| {
            tracing::debug!("Creature:setDropLoot({})", drop);
            Ok(())
        });

        // Conditions
        methods.add_method("getCondition", |_, this, (condition_type, condition_id, sub_id): (u32, Option<i32>, Option<i32>)| {
            tracing::debug!("Creature:getCondition({}, {:?}, {:?})", condition_type, condition_id, sub_id);
            Ok(Value::Nil)
        });
        methods.add_method("addCondition", |_, this, condition: Value| {
            tracing::debug!("Creature:addCondition()");
            Ok(true)
        });
        methods.add_method("removeCondition", |_, this, (condition_type, condition_id, sub_id, force): (u32, Option<i32>, Option<i32>, Option<bool>)| {
            tracing::debug!("Creature:removeCondition({}, {:?}, {:?}, {:?})", condition_type, condition_id, sub_id, force);
            Ok(true)
        });

        // Events
        methods.add_method("getEvents", |lua, this, event_type: u8| {
            Ok(lua.create_table()?)
        });
        methods.add_method("registerEvent", |_, this, event_name: String| {
            tracing::debug!("Creature:registerEvent({})", event_name);
            Ok(true)
        });
        methods.add_method("unregisterEvent", |_, this, event_name: String| {
            tracing::debug!("Creature:unregisterEvent({})", event_name);
            Ok(true)
        });

        // Communication
        methods.add_method("say", |_, this, (text, talk_type, ghost, target, position): (String, Option<u8>, Option<bool>, Option<Value>, Option<LuaPosition>)| {
            tracing::debug!("Creature:say({}, {:?})", text, talk_type);
            Ok(true)
        });

        // Tile
        methods.add_method("getTile", |_, this, ()| -> LuaResult<Value> {
            tracing::debug!("Creature:getTile()");
            Ok(Value::Nil)
        });

        // Parent
        methods.add_method("getParent", |_, this, ()| -> LuaResult<Value> {
            Ok(Value::Nil)
        });

        // Summons
        methods.add_method("getSummons", |lua, this, ()| {
            Ok(lua.create_table()?)
        });

        // Damage map
        methods.add_method("getDamageMap", |lua, this, ()| {
            Ok(lua.create_table()?)
        });

        // Description
        methods.add_method("getDescription", |_, this, distance: Option<i32>| {
            Ok(format!("You see {}.", this.name))
        });

        // Pathfinding
        methods.add_method("getPathTo", |lua, this, (pos, min_dist, max_dist, full_path, clear_sight, max_search_dist): (LuaPosition, Option<i32>, Option<i32>, Option<bool>, Option<bool>, Option<i32>)| {
            tracing::debug!("Creature:getPathTo({:?})", pos.0);
            Ok(lua.create_table()?)
        });

        // Movement
        methods.add_method("moveTo", |_, this, (pos, flags): (LuaPosition, Option<u32>)| {
            tracing::debug!("Creature:moveTo({:?})", pos.0);
            Ok(true)
        });

        methods.add_method("teleportTo", |_, this, (pos, push_movement): (LuaPosition, Option<bool>)| {
            tracing::debug!("Creature:teleportTo({:?})", pos.0);
            Ok(true)
        });

        methods.add_method("remove", |_, this, ()| {
            tracing::debug!("Creature:remove()");
            Ok(true)
        });
    }
}

/// Register the Creature class.
pub fn register(lua: &Lua) -> LuaResult<()> {
    let creature_ctor = lua.create_function(|_, id: CreatureId| {
        Ok(LuaCreature::new(id))
    })?;
    
    create_extensible_class(lua, "Creature", creature_ctor)?;
    Ok(())
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::userdata::position;

    #[test]
    fn test_creature_basic() {
        let lua = Lua::new();
        position::register(&lua).unwrap();
        register(&lua).unwrap();
        
        lua.load(r#"
            local c = Creature(12345)
            assert(c:getId() == 12345)
            assert(c:isCreature() == true)
            assert(c:isPlayer() == false)
        "#).exec().unwrap();
    }

    #[test]
    fn test_creature_health() {
        let lua = Lua::new();
        position::register(&lua).unwrap();
        register(&lua).unwrap();
        
        let result: i32 = lua.load(r#"
            local c = Creature(1)
            return c:getHealth()
        "#).eval().unwrap();
        
        assert_eq!(result, 100);
    }
}
