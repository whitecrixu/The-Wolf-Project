//! FFI bridge - exposes Rust Lua engine to C++
//!
//! This allows the C++ server to use the Rust Lua implementation
//! instead of the built-in one, enabling gradual migration.

use std::ffi::{CStr, CString};
use std::os::raw::c_char;
use std::ptr;

use wolf_lua::{LuaState, ScriptLoader};

pub mod callbacks;
pub use callbacks::*;

/// Opaque handle to Rust Lua state
pub struct RustLuaState {
    state: LuaState,
}

/// Initialize the Rust Lua engine
/// Returns a handle that must be freed with wolf_lua_destroy()
#[no_mangle]
pub extern "C" fn wolf_lua_init() -> *mut RustLuaState {
    match LuaState::new() {
        Ok(state) => {
            let boxed = Box::new(RustLuaState { state });
            Box::into_raw(boxed)
        }
        Err(e) => {
            eprintln!("[Rust] Failed to init Lua: {}", e);
            ptr::null_mut()
        }
    }
}

/// Destroy the Rust Lua state
#[no_mangle]
pub extern "C" fn wolf_lua_destroy(handle: *mut RustLuaState) {
    if !handle.is_null() {
        unsafe {
            drop(Box::from_raw(handle));
        }
    }
}

/// Load scripts from data directory
/// Returns 0 on success, -1 on error
#[no_mangle]
pub extern "C" fn wolf_lua_load_scripts(
    handle: *mut RustLuaState,
    data_path: *const c_char,
) -> i32 {
    if handle.is_null() || data_path.is_null() {
        return -1;
    }

    let state = unsafe { &*handle };
    let path = unsafe {
        match CStr::from_ptr(data_path).to_str() {
            Ok(s) => s,
            Err(_) => return -1,
        }
    };

    let loader = ScriptLoader::new(path);
    match loader.load_all(state.state.lua()) {
        Ok(stats) => {
            println!("[Rust] Loaded: {}", stats);
            0
        }
        Err(e) => {
            eprintln!("[Rust] Script error: {}", e);
            -1
        }
    }
}

/// Execute a Lua string
/// Returns 0 on success, -1 on error
#[no_mangle]
pub extern "C" fn wolf_lua_exec(handle: *mut RustLuaState, code: *const c_char) -> i32 {
    if handle.is_null() || code.is_null() {
        return -1;
    }

    let state = unsafe { &*handle };
    let code_str = unsafe {
        match CStr::from_ptr(code).to_str() {
            Ok(s) => s,
            Err(_) => return -1,
        }
    };

    match state.state.exec_string(code_str) {
        Ok(_) => 0,
        Err(e) => {
            eprintln!("[Rust] Exec error: {}", e);
            -1
        }
    }
}

/// Call a global Lua function with no arguments
/// Returns 0 on success, -1 on error
#[no_mangle]
pub extern "C" fn wolf_lua_call_global(handle: *mut RustLuaState, func_name: *const c_char) -> i32 {
    if handle.is_null() || func_name.is_null() {
        return -1;
    }

    let state = unsafe { &*handle };
    let name = unsafe {
        match CStr::from_ptr(func_name).to_str() {
            Ok(s) => s,
            Err(_) => return -1,
        }
    };

    match state.state.call_global::<(), ()>(name, ()) {
        Ok(_) => 0,
        Err(e) => {
            eprintln!("[Rust] Call error: {}", e);
            -1
        }
    }
}

/// Get Lua version string
#[no_mangle]
pub extern "C" fn wolf_lua_version() -> *const c_char {
    static VERSION: &[u8] = b"Wolf-Lua-Rust 0.1.0 (LuaJIT)\0";
    VERSION.as_ptr() as *const c_char
}
