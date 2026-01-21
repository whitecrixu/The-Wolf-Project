/**
 * Test program for Wolf FFI - Rust Lua integration
 * 
 * Compile with:
 * g++ -o test_rust_lua test_rust_lua.cpp \
 *     -I../src-rs/wolf-ffi/include \
 *     -L../src-rs/target/release \
 *     -lwolf_ffi -lpthread -ldl -lm
 * 
 * Run with:
 * LD_LIBRARY_PATH=../src-rs/target/release ./test_rust_lua
 */

#include <iostream>
#include "wolf_ffi.h"

int main() {
    std::cout << "=== Wolf FFI Test ===" << std::endl;
    
    // Get version
    std::cout << "Lua Engine: " << wolf_lua_version() << std::endl;
    
    // Initialize Rust Lua
    std::cout << "\nInitializing Rust Lua engine..." << std::endl;
    RustLuaState* lua = wolf_lua_init();
    if (!lua) {
        std::cerr << "Failed to initialize Lua!" << std::endl;
        return 1;
    }
    std::cout << "Lua initialized successfully!" << std::endl;
    
    // Execute some Lua code
    std::cout << "\nExecuting Lua code..." << std::endl;
    int result = wolf_lua_exec(lua, R"(
        print("Hello from Rust Lua!")
        
        -- Test Position class
        local pos = Position(100, 200, 7)
        print("Created position: " .. pos.x .. ", " .. pos.y .. ", " .. pos.z)
        
        -- Test Player class  
        local player = Player(12345)
        print("Player ID: " .. player:getId())
        print("Player level: " .. player:getLevel())
        
        -- Test creating a table
        testTable = {
            name = "Wolf Server",
            version = "1.0.0"
        }
        print("Server: " .. testTable.name .. " v" .. testTable.version)
    )");
    
    if (result != 0) {
        std::cerr << "Lua execution failed!" << std::endl;
    } else {
        std::cout << "Lua execution successful!" << std::endl;
    }
    
    // Load scripts from data directory
    std::cout << "\nLoading scripts from data/..." << std::endl;
    result = wolf_lua_load_scripts(lua, "data");
    if (result != 0) {
        std::cout << "Some scripts failed (expected - compat.lua needs work)" << std::endl;
    } else {
        std::cout << "All scripts loaded!" << std::endl;
    }
    
    // Cleanup
    std::cout << "\nCleaning up..." << std::endl;
    wolf_lua_destroy(lua);
    std::cout << "Done!" << std::endl;
    
    return 0;
}
