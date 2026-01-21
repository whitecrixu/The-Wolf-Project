//! Script loader for Lua scripts.

use std::path::{Path, PathBuf};
use walkdir::WalkDir;
use mlua::Lua;

use crate::error::LuaError;

/// Loads all Lua scripts from the data directory.
pub struct ScriptLoader {
    data_path: PathBuf,
}

impl ScriptLoader {
    pub fn new<P: AsRef<Path>>(data_path: P) -> Self {
        Self {
            data_path: data_path.as_ref().to_path_buf(),
        }
    }

    /// Load global.lua and lib.lua first, then all scripts.
    pub fn load_all(&self, lua: &Lua) -> Result<LoadStats, LuaError> {
        let mut stats = LoadStats::default();

        // 1. Load global.lua
        let global_lua = self.data_path.join("global.lua");
        if global_lua.exists() {
            self.load_file(lua, &global_lua)?;
            stats.files_loaded += 1;
            tracing::info!("Loaded global.lua");
        }

        // 2. Load lib/lib.lua (this will dofile other lib files)
        let lib_lua = self.data_path.join("lib/lib.lua");
        if lib_lua.exists() {
            self.load_file(lua, &lib_lua)?;
            stats.files_loaded += 1;
            tracing::info!("Loaded lib/lib.lua");
        }

        // 3. Load all scripts from scripts/ directory
        let scripts_dir = self.data_path.join("scripts");
        if scripts_dir.exists() {
            let count = self.load_directory(lua, &scripts_dir)?;
            stats.files_loaded += count;
            tracing::info!("Loaded {} scripts from scripts/", count);
        }

        // 4. Load monster definitions from monster/lua/
        let monster_dir = self.data_path.join("monster/lua");
        if monster_dir.exists() {
            let count = self.load_directory(lua, &monster_dir)?;
            stats.monsters_loaded = count;
            tracing::info!("Loaded {} monster definitions", count);
        }

        // 5. Load NPC definitions from npc/lua/
        let npc_dir = self.data_path.join("npc/lua");
        if npc_dir.exists() {
            let count = self.load_directory(lua, &npc_dir)?;
            stats.npcs_loaded = count;
            tracing::info!("Loaded {} NPC definitions", count);
        }

        Ok(stats)
    }

    /// Load a single Lua file.
    pub fn load_file(&self, lua: &Lua, path: &Path) -> Result<(), LuaError> {
        let content = std::fs::read_to_string(path)
            .map_err(|e| LuaError::ScriptNotFound(path.display().to_string()))?;

        // Set package.path to include our lib directory
        let lib_path = self.data_path.join("lib/?.lua");
        lua.load(format!(
            "package.path = package.path .. ';{}'",
            lib_path.display()
        ))
        .exec()
        .ok();

        lua.load(&content)
            .set_name(path.file_name().unwrap_or_default().to_string_lossy())
            .exec()
            .map_err(LuaError::Runtime)?;

        Ok(())
    }

    /// Recursively load all .lua files from a directory.
    pub fn load_directory(&self, lua: &Lua, dir: &Path) -> Result<usize, LuaError> {
        let mut count = 0;

        for entry in WalkDir::new(dir)
            .follow_links(true)
            .into_iter()
            .filter_map(|e| e.ok())
        {
            let path = entry.path();
            if path.extension().map_or(false, |ext| ext == "lua") {
                match self.load_file(lua, path) {
                    Ok(_) => {
                        count += 1;
                        tracing::debug!("Loaded: {}", path.display());
                    }
                    Err(e) => {
                        tracing::warn!("Failed to load {}: {}", path.display(), e);
                    }
                }
            }
        }

        Ok(count)
    }
}

#[derive(Debug, Default)]
pub struct LoadStats {
    pub files_loaded: usize,
    pub monsters_loaded: usize,
    pub npcs_loaded: usize,
}

impl std::fmt::Display for LoadStats {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        write!(
            f,
            "Scripts: {}, Monsters: {}, NPCs: {}",
            self.files_loaded, self.monsters_loaded, self.npcs_loaded
        )
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::state::LuaState;

    #[test]
    fn test_loader_creation() {
        let loader = ScriptLoader::new("/tmp/data");
        assert_eq!(loader.data_path, PathBuf::from("/tmp/data"));
    }
}
