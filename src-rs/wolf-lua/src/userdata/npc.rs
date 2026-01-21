//! NPC userdata for Lua.

use mlua::{Lua, Result as LuaResult, UserData, UserDataMethods, Value};
use wolf_core::{CreatureId, Position, SpeechBubble};

use crate::class_registry::create_extensible_class;

use super::creature::LuaCreature;
use super::position::LuaPosition;

/// NPC wrapper for Lua.
#[derive(Debug, Clone)]
pub struct LuaNpc {
    pub creature: LuaCreature,
    pub master_pos: Position,
    pub speech_bubble: SpeechBubble,
}

impl Default for LuaNpc {
    fn default() -> Self {
        Self {
            creature: LuaCreature::default(),
            master_pos: Position::default(),
            speech_bubble: SpeechBubble::Normal,
        }
    }
}

impl LuaNpc {
    pub fn new(id: CreatureId) -> Self {
        Self {
            creature: LuaCreature::new(id),
            ..Default::default()
        }
    }
}

impl UserData for LuaNpc {
    fn add_methods<M: UserDataMethods<Self>>(methods: &mut M) {
        // Type checks
        methods.add_method("isCreature", |_, _, ()| Ok(true));
        methods.add_method("isPlayer", |_, _, ()| Ok(false));
        methods.add_method("isMonster", |_, _, ()| Ok(false));
        methods.add_method("isNpc", |_, _, ()| Ok(true));
        
        // Inherited
        methods.add_method("getId", |_, this, ()| Ok(this.creature.id));
        methods.add_method("getName", |_, this, ()| Ok(this.creature.name.clone()));
        methods.add_method("getPosition", |_, this, ()| Ok(LuaPosition(this.creature.position)));

        // NPC-specific
        methods.add_method("setMasterPos", |_, this, pos: LuaPosition| {
            tracing::debug!("Npc:setMasterPos({:?})", pos.0);
            Ok(())
        });
        
        methods.add_method("getSpeechBubble", |_, this, ()| Ok(this.speech_bubble as u8));
        methods.add_method("setSpeechBubble", |_, this, bubble: u8| {
            tracing::debug!("Npc:setSpeechBubble({})", bubble);
            Ok(())
        });
    }
}

pub fn register(lua: &Lua) -> LuaResult<()> {
    let npc_ctor = lua.create_function(|_, id: CreatureId| {
        Ok(LuaNpc::new(id))
    })?;
    create_extensible_class(lua, "Npc", npc_ctor)?;
    Ok(())
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::userdata::position;

    #[test]
    fn test_npc_type_checks() {
        let lua = Lua::new();
        position::register(&lua).unwrap();
        register(&lua).unwrap();
        
        lua.load(r#"
            local n = Npc(1)
            assert(n:isNpc() == true)
            assert(n:isPlayer() == false)
        "#).exec().unwrap();
    }
}
