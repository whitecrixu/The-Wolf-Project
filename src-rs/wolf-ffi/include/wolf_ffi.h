/**
 * Wolf FFI - Rust Lua Engine for The Wolf Project
 * 
 * This header allows C++ code to use the Rust Lua implementation.
 * Link with: -lwolf_ffi
 */

#ifndef WOLF_FFI_H
#define WOLF_FFI_H

#ifdef __cplusplus
extern "C" {
#endif

/* Opaque handle to Rust Lua state */
typedef struct RustLuaState RustLuaState;

/**
 * Initialize the Rust Lua engine.
 * @return Handle to Lua state, or NULL on error
 */
RustLuaState* wolf_lua_init(void);

/**
 * Destroy the Rust Lua state.
 * @param handle Handle from wolf_lua_init()
 */
void wolf_lua_destroy(RustLuaState* handle);

/**
 * Load scripts from data directory.
 * @param handle Lua state handle
 * @param data_path Path to data directory (e.g., "data")
 * @return 0 on success, -1 on error
 */
int wolf_lua_load_scripts(RustLuaState* handle, const char* data_path);

/**
 * Execute a Lua code string.
 * @param handle Lua state handle
 * @param code Lua code to execute
 * @return 0 on success, -1 on error
 */
int wolf_lua_exec(RustLuaState* handle, const char* code);

/**
 * Call a global Lua function with no arguments.
 * @param handle Lua state handle
 * @param func_name Name of the global function
 * @return 0 on success, -1 on error
 */
int wolf_lua_call_global(RustLuaState* handle, const char* func_name);

/**
 * Get Lua version string.
 * @return Static version string
 */
const char* wolf_lua_version(void);

#ifdef __cplusplus
}
#endif

#endif /* WOLF_FFI_H */
