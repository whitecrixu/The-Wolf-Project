//! Common type aliases and helper structures.

use serde::{Deserialize, Serialize};

/// Unique identifier for creatures (players, monsters, NPCs).
pub type CreatureId = u32;

/// Unique identifier for items.
pub type ItemId = u16;

/// Unique identifier for guilds.
pub type GuildId = u32;

/// Unique identifier for houses.
pub type HouseId = u32;

/// Unique identifier for towns.
pub type TownId = u32;

/// Light information for creatures/items.
#[derive(Debug, Clone, Copy, PartialEq, Eq, Default, Serialize, Deserialize)]
pub struct LightInfo {
    pub level: u8,
    pub color: u8,
}

impl LightInfo {
    pub const fn new(level: u8, color: u8) -> Self {
        Self { level, color }
    }
}

/// Shop item information for NPC trading.
#[derive(Debug, Clone, PartialEq, Eq, Serialize, Deserialize)]
pub struct ShopInfo {
    pub item_id: u16,
    pub sub_type: i32,
    pub buy_price: u32,
    pub sell_price: u32,
    pub real_name: String,
}

impl Default for ShopInfo {
    fn default() -> Self {
        Self {
            item_id: 0,
            sub_type: 1,
            buy_price: 0,
            sell_price: 0,
            real_name: String::new(),
        }
    }
}

/// Combat damage information.
#[derive(Debug, Clone, Copy, PartialEq, Eq, Default)]
pub struct CombatDamage {
    pub primary_type: super::CombatType,
    pub primary_value: i32,
    pub secondary_type: super::CombatType,
    pub secondary_value: i32,
    pub origin: super::CombatOrigin,
}

/// Lua variant type for passing different value types to/from scripts.
#[derive(Debug, Clone, PartialEq)]
pub enum LuaVariant {
    None,
    Number(i64),
    String(String),
    Position(super::Position),
}

impl Default for LuaVariant {
    fn default() -> Self {
        Self::None
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_light_info() {
        let light = LightInfo::new(8, 215);
        assert_eq!(light.level, 8);
        assert_eq!(light.color, 215);
    }

    #[test]
    fn test_lua_variant() {
        let v1 = LuaVariant::Number(42);
        let v2 = LuaVariant::String("test".to_string());
        
        assert!(matches!(v1, LuaVariant::Number(42)));
        assert!(matches!(v2, LuaVariant::String(_)));
    }
}
