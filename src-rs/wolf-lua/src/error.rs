//! Error types for Lua operations.

use thiserror::Error;

/// Errors that can occur during Lua operations.
#[derive(Error, Debug)]
pub enum LuaError {
    #[error("Lua runtime error: {0}")]
    Runtime(#[from] mlua::Error),

    #[error("Script not found: {0}")]
    ScriptNotFound(String),

    #[error("Invalid argument: {0}")]
    InvalidArgument(String),

    #[error("Creature not found: id={0}")]
    CreatureNotFound(u32),

    #[error("Item not found: uid={0}")]
    ItemNotFound(u32),

    #[error("Player not found: {0}")]
    PlayerNotFound(String),

    #[error("Invalid position: ({0}, {1}, {2})")]
    InvalidPosition(u16, u16, u8),

    #[error("IO error: {0}")]
    Io(#[from] std::io::Error),
}

impl From<LuaError> for mlua::Error {
    fn from(err: LuaError) -> Self {
        mlua::Error::ExternalError(std::sync::Arc::new(err))
    }
}
