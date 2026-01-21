//! Lua state management.

use mlua::{Lua, Result as LuaResult, Table, Value};
use std::path::Path;
use tracing::{debug, info};

use crate::globals;
use crate::userdata;

/// Main Lua state wrapper for the game server.
pub struct LuaState {
    lua: Lua,
}

impl LuaState {
    /// Creates a new Lua state with all game APIs registered.
    pub fn new() -> LuaResult<Self> {
        info!("Initializing Lua state (LuaJIT)");
        
        // Create Lua state with JIT enabled
        let lua = Lua::new();
        
        let state = Self { lua };
        state.init()?;
        
        Ok(state)
    }

    /// Initialize all Lua bindings.
    fn init(&self) -> LuaResult<()> {
        // Register global functions
        globals::register_globals(&self.lua)?;
        
        // Register all userdata types (classes)
        userdata::register_userdata(&self.lua)?;
        
        // Register enums as global constants
        self.register_enums()?;
        
        info!("Lua state initialized successfully");
        Ok(())
    }

    /// Register all game enums as Lua constants.
    fn register_enums(&self) -> LuaResult<()> {
        use wolf_core::*;
        
        let globals = self.lua.globals();
        
        // Creature types
        globals.set("CREATURETYPE_PLAYER", CreatureType::Player as u8)?;
        globals.set("CREATURETYPE_MONSTER", CreatureType::Monster as u8)?;
        globals.set("CREATURETYPE_NPC", CreatureType::Npc as u8)?;
        globals.set("CREATURETYPE_SUMMON_OWN", CreatureType::SummonOwn as u8)?;
        globals.set("CREATURETYPE_SUMMON_OTHERS", CreatureType::SummonOthers as u8)?;
        
        // Directions
        globals.set("DIRECTION_NORTH", Direction::North as u8)?;
        globals.set("DIRECTION_EAST", Direction::East as u8)?;
        globals.set("DIRECTION_SOUTH", Direction::South as u8)?;
        globals.set("DIRECTION_WEST", Direction::West as u8)?;
        globals.set("DIRECTION_SOUTHWEST", Direction::SouthWest as u8)?;
        globals.set("DIRECTION_SOUTHEAST", Direction::SouthEast as u8)?;
        globals.set("DIRECTION_NORTHWEST", Direction::NorthWest as u8)?;
        globals.set("DIRECTION_NORTHEAST", Direction::NorthEast as u8)?;
        
        // Account types
        globals.set("ACCOUNT_TYPE_NORMAL", AccountType::Normal as u8)?;
        globals.set("ACCOUNT_TYPE_TUTOR", AccountType::Tutor as u8)?;
        globals.set("ACCOUNT_TYPE_SENIORTUTOR", AccountType::SeniorTutor as u8)?;
        globals.set("ACCOUNT_TYPE_GAMEMASTER", AccountType::Gamemaster as u8)?;
        globals.set("ACCOUNT_TYPE_GOD", AccountType::God as u8)?;
        
        // Skills
        globals.set("SKILL_FIST", Skill::Fist as u8)?;
        globals.set("SKILL_CLUB", Skill::Club as u8)?;
        globals.set("SKILL_SWORD", Skill::Sword as u8)?;
        globals.set("SKILL_AXE", Skill::Axe as u8)?;
        globals.set("SKILL_DISTANCE", Skill::Distance as u8)?;
        globals.set("SKILL_SHIELD", Skill::Shield as u8)?;
        globals.set("SKILL_FISHING", Skill::Fishing as u8)?;
        globals.set("SKILL_MAGLEVEL", Skill::MagicLevel as u8)?;
        globals.set("SKILL_LEVEL", Skill::Level as u8)?;
        
        // Skulls
        globals.set("SKULL_NONE", Skull::None as u8)?;
        globals.set("SKULL_YELLOW", Skull::Yellow as u8)?;
        globals.set("SKULL_GREEN", Skull::Green as u8)?;
        globals.set("SKULL_WHITE", Skull::White as u8)?;
        globals.set("SKULL_RED", Skull::Red as u8)?;
        globals.set("SKULL_BLACK", Skull::Black as u8)?;
        globals.set("SKULL_ORANGE", Skull::Orange as u8)?;
        
        // Race types
        globals.set("RACE_NONE", 0u8)?;
        globals.set("RACE_BLOOD", 0u8)?;
        globals.set("RACE_VENOM", 1u8)?;
        globals.set("RACE_UNDEAD", 2u8)?;
        globals.set("RACE_FIRE", 3u8)?;
        globals.set("RACE_ENERGY", 4u8)?;
        
        // Combat types
        globals.set("COMBAT_NONE", CombatType::NONE.bits())?;
        globals.set("COMBAT_PHYSICALDAMAGE", CombatType::PHYSICAL.bits())?;
        globals.set("COMBAT_ENERGYDAMAGE", CombatType::ENERGY.bits())?;
        globals.set("COMBAT_EARTHDAMAGE", CombatType::EARTH.bits())?;
        globals.set("COMBAT_FIREDAMAGE", CombatType::FIRE.bits())?;
        globals.set("COMBAT_UNDEFINEDDAMAGE", CombatType::UNDEFINED.bits())?;
        globals.set("COMBAT_LIFEDRAIN", CombatType::LIFE_DRAIN.bits())?;
        globals.set("COMBAT_MANADRAIN", CombatType::MANA_DRAIN.bits())?;
        globals.set("COMBAT_HEALING", CombatType::HEALING.bits())?;
        globals.set("COMBAT_DROWNDAMAGE", CombatType::DROWN.bits())?;
        globals.set("COMBAT_ICEDAMAGE", CombatType::ICE.bits())?;
        globals.set("COMBAT_HOLYDAMAGE", CombatType::HOLY.bits())?;
        globals.set("COMBAT_DEATHDAMAGE", CombatType::DEATH.bits())?;
        
        // Condition types
        globals.set("CONDITION_NONE", ConditionType::NONE.bits())?;
        globals.set("CONDITION_POISON", ConditionType::POISON.bits())?;
        globals.set("CONDITION_FIRE", ConditionType::FIRE.bits())?;
        globals.set("CONDITION_ENERGY", ConditionType::ENERGY.bits())?;
        globals.set("CONDITION_BLEEDING", ConditionType::BLEEDING.bits())?;
        globals.set("CONDITION_HASTE", ConditionType::HASTE.bits())?;
        globals.set("CONDITION_PARALYZE", ConditionType::PARALYZE.bits())?;
        globals.set("CONDITION_OUTFIT", ConditionType::OUTFIT.bits())?;
        globals.set("CONDITION_INVISIBLE", ConditionType::INVISIBLE.bits())?;
        globals.set("CONDITION_LIGHT", ConditionType::LIGHT.bits())?;
        globals.set("CONDITION_MANASHIELD", ConditionType::MANA_SHIELD.bits())?;
        globals.set("CONDITION_INFIGHT", ConditionType::INFIGHT.bits())?;
        globals.set("CONDITION_DRUNK", ConditionType::DRUNK.bits())?;
        globals.set("CONDITION_REGENERATION", ConditionType::REGENERATION.bits())?;
        globals.set("CONDITION_SOUL", ConditionType::SOUL.bits())?;
        globals.set("CONDITION_DROWN", ConditionType::DROWN.bits())?;
        globals.set("CONDITION_MUTED", ConditionType::MUTED.bits())?;
        globals.set("CONDITION_ATTRIBUTES", ConditionType::ATTRIBUTES.bits())?;
        globals.set("CONDITION_FREEZING", ConditionType::FREEZING.bits())?;
        globals.set("CONDITION_DAZZLED", ConditionType::DAZZLED.bits())?;
        globals.set("CONDITION_CURSED", ConditionType::CURSED.bits())?;
        globals.set("CONDITION_PACIFIED", ConditionType::PACIFIED.bits())?;
        
        // Game states
        globals.set("GAME_STATE_STARTUP", GameState::Startup as u8)?;
        globals.set("GAME_STATE_INIT", GameState::Init as u8)?;
        globals.set("GAME_STATE_NORMAL", GameState::Normal as u8)?;
        globals.set("GAME_STATE_CLOSED", GameState::Closed as u8)?;
        globals.set("GAME_STATE_SHUTDOWN", GameState::Shutdown as u8)?;
        globals.set("GAME_STATE_CLOSING", GameState::Closing as u8)?;
        globals.set("GAME_STATE_MAINTAIN", GameState::Maintain as u8)?;
        
        // World types
        globals.set("WORLD_TYPE_PVP", WorldType::PvP as u8)?;
        globals.set("WORLD_TYPE_NO_PVP", WorldType::NoPvP as u8)?;
        globals.set("WORLD_TYPE_PVP_ENFORCED", WorldType::PvPEnforced as u8)?;
        
        // Message types
        globals.set("MESSAGE_STATUS_DEFAULT", MessageType::StatusDefault as u8)?;
        globals.set("MESSAGE_STATUS_WARNING", MessageType::StatusWarning as u8)?;
        globals.set("MESSAGE_EVENT_ADVANCE", MessageType::EventAdvance as u8)?;
        globals.set("MESSAGE_STATUS_SMALL", MessageType::StatusSmall as u8)?;
        globals.set("MESSAGE_INFO_DESCR", MessageType::InfoDescription as u8)?;
        globals.set("MESSAGE_DAMAGE_DEALT", MessageType::DamageDealt as u8)?;
        globals.set("MESSAGE_DAMAGE_RECEIVED", MessageType::DamageReceived as u8)?;
        globals.set("MESSAGE_HEALED", MessageType::Healed as u8)?;
        globals.set("MESSAGE_EXPERIENCE", MessageType::Experience as u8)?;
        globals.set("MESSAGE_EVENT_DEFAULT", MessageType::EventDefault as u8)?;
        globals.set("MESSAGE_LOOT", MessageType::Loot as u8)?;
        
        // Talk types
        globals.set("TALKTYPE_SAY", TalkType::Say as u8)?;
        globals.set("TALKTYPE_WHISPER", TalkType::Whisper as u8)?;
        globals.set("TALKTYPE_YELL", TalkType::Yell as u8)?;
        globals.set("TALKTYPE_PRIVATE_FROM", TalkType::PrivateFrom as u8)?;
        globals.set("TALKTYPE_PRIVATE_TO", TalkType::PrivateTo as u8)?;
        globals.set("TALKTYPE_CHANNEL_Y", TalkType::ChannelYellow as u8)?;
        globals.set("TALKTYPE_CHANNEL_O", TalkType::ChannelOrange as u8)?;
        globals.set("TALKTYPE_BROADCAST", TalkType::Broadcast as u8)?;
        globals.set("TALKTYPE_CHANNEL_R1", TalkType::ChannelRed as u8)?;
        globals.set("TALKTYPE_MONSTER_SAY", TalkType::MonsterSay as u8)?;
        globals.set("TALKTYPE_MONSTER_YELL", TalkType::MonsterYell as u8)?;
        
        // Slots
        globals.set("CONST_SLOT_HEAD", Slot::Head as u8)?;
        globals.set("CONST_SLOT_NECKLACE", Slot::Necklace as u8)?;
        globals.set("CONST_SLOT_BACKPACK", Slot::Backpack as u8)?;
        globals.set("CONST_SLOT_ARMOR", Slot::Armor as u8)?;
        globals.set("CONST_SLOT_RIGHT", Slot::Right as u8)?;
        globals.set("CONST_SLOT_LEFT", Slot::Left as u8)?;
        globals.set("CONST_SLOT_LEGS", Slot::Legs as u8)?;
        globals.set("CONST_SLOT_FEET", Slot::Feet as u8)?;
        globals.set("CONST_SLOT_RING", Slot::Ring as u8)?;
        globals.set("CONST_SLOT_AMMO", Slot::Ammo as u8)?;
        
        // Return values (partial list of common ones)
        globals.set("RETURNVALUE_NOERROR", ReturnValue::NoError as u8)?;
        globals.set("RETURNVALUE_NOTPOSSIBLE", ReturnValue::NotPossible as u8)?;
        globals.set("RETURNVALUE_NOTENOUGHROOM", ReturnValue::NotEnoughRoom as u8)?;
        globals.set("RETURNVALUE_PLAYERISPZLOCKED", ReturnValue::PlayerIsPzLocked as u8)?;
        globals.set("RETURNVALUE_NOTMOVEABLE", ReturnValue::NotMoveable as u8)?;
        globals.set("RETURNVALUE_DROPTWOHANDEDITEM", ReturnValue::DropTwoHandedItem as u8)?;
        globals.set("RETURNVALUE_NOTENOUGHCAPACITY", ReturnValue::NotEnoughCapacity as u8)?;
        globals.set("RETURNVALUE_CANNOTPICKUP", ReturnValue::CannotPickup as u8)?;
        globals.set("RETURNVALUE_DEPOTISFULL", ReturnValue::DepotIsFull as u8)?;
        globals.set("RETURNVALUE_NOTENOUGHLEVEL", ReturnValue::NotEnoughLevel as u8)?;
        globals.set("RETURNVALUE_NOTENOUGHMAGICLEVEL", ReturnValue::NotEnoughMagicLevel as u8)?;
        globals.set("RETURNVALUE_NOTENOUGHMANA", ReturnValue::NotEnoughMana as u8)?;
        globals.set("RETURNVALUE_NOTENOUGHSOUL", ReturnValue::NotEnoughSoul as u8)?;
        globals.set("RETURNVALUE_YOUAREEXHAUSTED", ReturnValue::YouAreExhausted as u8)?;
        globals.set("RETURNVALUE_YOUNEEDPREMIUMACCOUNT", ReturnValue::YouNeedPremiumAccount as u8)?;
        
        debug!("Registered all Lua enum constants");
        Ok(())
    }

    /// Execute a Lua script file.
    pub fn exec_file(&self, path: &Path) -> LuaResult<()> {
        let script = std::fs::read_to_string(path)?;
        debug!("Executing script: {}", path.display());
        self.lua.load(&script).set_name(path.to_string_lossy()).exec()
    }

    /// Execute a Lua string.
    pub fn exec_string(&self, code: &str) -> LuaResult<()> {
        self.lua.load(code).exec()
    }

    /// Evaluate a Lua expression and return the result.
    pub fn eval<T: mlua::FromLua>(&self, code: &str) -> LuaResult<T> {
        self.lua.load(code).eval()
    }

    /// Get access to the underlying Lua state.
    pub fn lua(&self) -> &Lua {
        &self.lua
    }

    /// Get a global value.
    pub fn get_global<T: mlua::FromLua>(&self, name: &str) -> LuaResult<T> {
        self.lua.globals().get(name)
    }

    /// Set a global value.
    pub fn set_global<T: mlua::IntoLua>(&self, name: &str, value: T) -> LuaResult<()> {
        self.lua.globals().set(name, value)
    }

    /// Call a global function.
    pub fn call_global<A, R>(&self, name: &str, args: A) -> LuaResult<R>
    where
        A: mlua::IntoLuaMulti,
        R: mlua::FromLuaMulti,
    {
        let func: mlua::Function = self.lua.globals().get(name)?;
        func.call(args)
    }
}

impl Default for LuaState {
    fn default() -> Self {
        Self::new().expect("Failed to create Lua state")
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_lua_state_creation() {
        let state = LuaState::new().unwrap();
        assert!(state.lua().globals().get::<Value>("SKILL_SWORD").is_ok());
    }

    #[test]
    fn test_enum_constants() {
        let state = LuaState::new().unwrap();
        
        let skill_sword: u8 = state.get_global("SKILL_SWORD").unwrap();
        assert_eq!(skill_sword, 2);
        
        let skull_red: u8 = state.get_global("SKULL_RED").unwrap();
        assert_eq!(skull_red, 4);
        
        let msg_type: u8 = state.get_global("MESSAGE_STATUS_DEFAULT").unwrap();
        assert_eq!(msg_type, 17);
    }

    #[test]
    fn test_exec_string() {
        let state = LuaState::new().unwrap();
        
        state.exec_string("testVar = SKILL_SWORD + 10").unwrap();
        let result: i32 = state.get_global("testVar").unwrap();
        assert_eq!(result, 12);
    }

    #[test]
    fn test_eval() {
        let state = LuaState::new().unwrap();
        
        let result: i32 = state.eval("return 2 + 2").unwrap();
        assert_eq!(result, 4);
    }
}
