#!/usr/bin/env python3
"""
Convert NPC Lua files from script() pattern to inline callbacks pattern.
This script reads NPC Lua files and replaces npcType:script(...) with
empty inline callback stubs.
"""

import os
import re
import sys

def convert_npc_file(filepath):
    """Convert a single NPC file from script() to inline callbacks."""
    with open(filepath, 'r') as f:
        content = f.read()
    
    # Check if file uses npcType:script()
    if 'npcType:script(' not in content:
        print(f"Skipping {filepath} - no script() call found")
        return False
    
    # Remove the npcType:script(...) line
    content = re.sub(r'npcType:script\([^\)]+\)\s*\n?', '', content)
    
    # Find the npcType:register() call and insert callbacks before it
    inline_callbacks = '''
-- NPC Callbacks (inline)
npcType:onAppear(function(npc, creature)
	-- Called when a creature appears in NPC's view
end)

npcType:onDisappear(function(npc, creature)
	-- Called when a creature disappears from NPC's view
end)

npcType:onMove(function(npc, creature, oldPos, newPos)
	-- Called when a creature moves near the NPC
end)

npcType:onSay(function(npc, creature, type, text)
	if not creature:isPlayer() then
		return
	end
	
	local player = creature:getPlayer()
	local lowerText = text:lower()
	
	-- Handle player speech here
	if lowerText:find("hi") or lowerText:find("hello") then
		npc:say("Hello, " .. player:getName() .. "!", TALKTYPE_SAY)
	elseif lowerText:find("bye") then
		npc:say("Goodbye, " .. player:getName() .. "!", TALKTYPE_SAY)
	end
end)

npcType:onCloseChannel(function(npc, creature)
	if creature:isPlayer() then
		npc:say("Goodbye!", TALKTYPE_SAY)
	end
end)

npcType:onThink(function(npc, interval)
	-- Called periodically
end)

'''
    
    # Insert callbacks before register()
    content = re.sub(
        r'(npcType:register\(\))',
        inline_callbacks + r'\1',
        content
    )
    
    # Write back
    with open(filepath, 'w') as f:
        f.write(content)
    
    print(f"Converted: {filepath}")
    return True

def main():
    npc_lua_dir = os.path.join(os.path.dirname(__file__), '..', 'data', 'npc', 'lua')
    
    if not os.path.exists(npc_lua_dir):
        print(f"Directory not found: {npc_lua_dir}")
        sys.exit(1)
    
    converted = 0
    for filename in os.listdir(npc_lua_dir):
        if filename.endswith('.lua'):
            filepath = os.path.join(npc_lua_dir, filename)
            if convert_npc_file(filepath):
                converted += 1
    
    print(f"\nConverted {converted} NPC files to inline callbacks format.")

if __name__ == '__main__':
    main()
