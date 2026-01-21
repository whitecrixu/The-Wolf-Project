//! Outfit type representing creature appearance.

use serde::{Deserialize, Serialize};

/// Creature outfit/appearance data.
#[derive(Debug, Clone, Copy, PartialEq, Eq, Default, Serialize, Deserialize)]
pub struct Outfit {
    pub look_type: u16,
    pub look_type_ex: u16,
    pub look_mount: u16,
    pub look_head: u8,
    pub look_body: u8,
    pub look_legs: u8,
    pub look_feet: u8,
    pub look_addons: u8,
}

impl Outfit {
    /// Creates a new outfit with the specified look type.
    pub const fn new(look_type: u16) -> Self {
        Self {
            look_type,
            look_type_ex: 0,
            look_mount: 0,
            look_head: 0,
            look_body: 0,
            look_legs: 0,
            look_feet: 0,
            look_addons: 0,
        }
    }

    /// Creates an outfit from an item (lookTypeEx).
    pub const fn from_item(item_id: u16) -> Self {
        Self {
            look_type: 0,
            look_type_ex: item_id,
            look_mount: 0,
            look_head: 0,
            look_body: 0,
            look_legs: 0,
            look_feet: 0,
            look_addons: 0,
        }
    }

    /// Sets the outfit colors.
    pub fn with_colors(mut self, head: u8, body: u8, legs: u8, feet: u8) -> Self {
        self.look_head = head;
        self.look_body = body;
        self.look_legs = legs;
        self.look_feet = feet;
        self
    }

    /// Sets the outfit addons.
    pub fn with_addons(mut self, addons: u8) -> Self {
        self.look_addons = addons;
        self
    }

    /// Sets the mount.
    pub fn with_mount(mut self, mount: u16) -> Self {
        self.look_mount = mount;
        self
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_outfit_new() {
        let outfit = Outfit::new(128);
        assert_eq!(outfit.look_type, 128);
        assert_eq!(outfit.look_type_ex, 0);
    }

    #[test]
    fn test_outfit_from_item() {
        let outfit = Outfit::from_item(2160);
        assert_eq!(outfit.look_type, 0);
        assert_eq!(outfit.look_type_ex, 2160);
    }

    #[test]
    fn test_outfit_builder() {
        let outfit = Outfit::new(128)
            .with_colors(78, 69, 58, 76)
            .with_addons(3)
            .with_mount(25);
        
        assert_eq!(outfit.look_head, 78);
        assert_eq!(outfit.look_body, 69);
        assert_eq!(outfit.look_legs, 58);
        assert_eq!(outfit.look_feet, 76);
        assert_eq!(outfit.look_addons, 3);
        assert_eq!(outfit.look_mount, 25);
    }
}
