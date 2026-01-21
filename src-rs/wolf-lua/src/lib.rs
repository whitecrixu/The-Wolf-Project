//! Wolf Lua - Lua scripting integration for The Wolf Project
//!
//! This crate provides Lua scripting support via mlua (LuaJIT),
//! implementing the same API as the original C++ TFS Lua bindings.

pub mod bridge;
pub mod class_registry;
pub mod error;
pub mod globals;
pub mod userdata;
pub mod loader;
pub mod state;

pub use bridge::{MonsterData, NpcData, set_monster_callback, set_npc_callback};
pub use error::LuaError;
pub use loader::ScriptLoader;
pub use state::LuaState;

/// Re-export mlua for convenience
pub use mlua;
