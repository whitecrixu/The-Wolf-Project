//! The Wolf Project - Rust Server
//!
//! This is the entry point for the Rust-based server.

use std::path::PathBuf;
use wolf_lua::{LuaState, ScriptLoader};

fn main() -> anyhow::Result<()> {
    // Initialize tracing/logging
    tracing_subscriber::fmt()
        .with_env_filter(
            tracing_subscriber::EnvFilter::from_default_env()
                .add_directive(tracing::Level::INFO.into()),
        )
        .init();

    tracing::info!("╔══════════════════════════════════════════╗");
    tracing::info!("║       The Wolf Project (Rust)            ║");
    tracing::info!("║       TFS Fork - Tibia 11.00             ║");
    tracing::info!("╚══════════════════════════════════════════╝");

    // Determine data path
    let data_path = std::env::var("WOLF_DATA_PATH")
        .map(PathBuf::from)
        .unwrap_or_else(|_| PathBuf::from("data"));

    tracing::info!("Data path: {}", data_path.display());

    // Initialize Lua state
    let lua = LuaState::new()?;
    tracing::info!("Lua state initialized (LuaJIT)");

    // Load scripts
    let loader = ScriptLoader::new(&data_path);
    
    match loader.load_all(lua.lua()) {
        Ok(stats) => {
            tracing::info!("Scripts loaded: {}", stats);
        }
        Err(e) => {
            tracing::warn!("Script loading completed with errors: {}", e);
        }
    }

    tracing::info!("Server initialization complete (stub mode)");
    tracing::info!("Press Ctrl+C to exit...");

    // In stub mode, just wait for shutdown signal
    std::thread::park();

    Ok(())
}
