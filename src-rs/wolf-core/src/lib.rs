//! Wolf Core - Base types and enums for The Wolf Project
//!
//! This crate provides the fundamental data structures that mirror
//! the C++ enums and types from the original TFS codebase.

pub mod enums;
pub mod position;
pub mod outfit;
pub mod types;

pub use enums::*;
pub use position::Position;
pub use outfit::Outfit;
pub use types::*;
