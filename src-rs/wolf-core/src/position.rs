//! Position type representing coordinates in the game world.

use serde::{Deserialize, Serialize};

/// A position in the game world (x, y, z coordinates).
#[derive(Debug, Clone, Copy, PartialEq, Eq, Hash, Default, Serialize, Deserialize)]
pub struct Position {
    pub x: u16,
    pub y: u16,
    pub z: u8,
}

impl Position {
    /// Creates a new position.
    pub const fn new(x: u16, y: u16, z: u8) -> Self {
        Self { x, y, z }
    }

    /// Returns the distance to another position (Chebyshev distance).
    pub fn get_distance(&self, other: &Position) -> i32 {
        let dx = (self.x as i32 - other.x as i32).abs();
        let dy = (self.y as i32 - other.y as i32).abs();
        let dz = (self.z as i32 - other.z as i32).abs();
        dx.max(dy).max(dz)
    }

    /// Checks if this position is on the same floor as another.
    pub fn is_same_floor(&self, other: &Position) -> bool {
        self.z == other.z
    }

    /// Checks if line of sight is clear to another position (stub).
    pub fn is_sight_clear(&self, _other: &Position, _check_floor: bool) -> bool {
        // TODO: Implement actual pathfinding logic
        true
    }
}

impl std::ops::Add for Position {
    type Output = Self;

    fn add(self, other: Self) -> Self {
        Self {
            x: self.x.saturating_add(other.x),
            y: self.y.saturating_add(other.y),
            z: self.z.saturating_add(other.z),
        }
    }
}

impl std::ops::Sub for Position {
    type Output = Self;

    fn sub(self, other: Self) -> Self {
        Self {
            x: self.x.saturating_sub(other.x),
            y: self.y.saturating_sub(other.y),
            z: self.z.saturating_sub(other.z),
        }
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_position_new() {
        let pos = Position::new(100, 200, 7);
        assert_eq!(pos.x, 100);
        assert_eq!(pos.y, 200);
        assert_eq!(pos.z, 7);
    }

    #[test]
    fn test_position_distance() {
        let pos1 = Position::new(100, 100, 7);
        let pos2 = Position::new(105, 103, 7);
        assert_eq!(pos1.get_distance(&pos2), 5);
    }

    #[test]
    fn test_position_add() {
        let pos1 = Position::new(100, 100, 7);
        let pos2 = Position::new(5, 3, 0);
        let result = pos1 + pos2;
        assert_eq!(result, Position::new(105, 103, 7));
    }

    #[test]
    fn test_position_sub() {
        let pos1 = Position::new(100, 100, 7);
        let pos2 = Position::new(5, 3, 0);
        let result = pos1 - pos2;
        assert_eq!(result, Position::new(95, 97, 7));
    }
}
