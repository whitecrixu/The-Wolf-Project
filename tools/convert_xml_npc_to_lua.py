#!/usr/bin/env python3
"""
Convert old XML NPC files to new Lua NPC format.
Supports both inline callbacks and legacy script files.
"""

import os
import sys
import xml.etree.ElementTree as ET
import re

def process_message(msg):
    """Process NPC message - replace |PLAYERNAME| with proper Lua code."""
    if not msg:
        return '"Hello!"'
    
    msg = msg.replace('\\', '\\\\')
    
    if '|PLAYERNAME|' in msg:
        parts = msg.split('|PLAYERNAME|')
        result_parts = []
        for i, part in enumerate(parts):
            if part:
                escaped = part.replace('"', '\\"')
                result_parts.append(f'"{escaped}"')
            if i < len(parts) - 1:
                result_parts.append('player:getName()')
        return ' .. '.join(result_parts) if result_parts else '"Hello!"'
    else:
        escaped = msg.replace('"', '\\"')
        return f'"{escaped}"'

def parse_xml_npc(filepath):
    """Parse an XML NPC file and return NPC data."""
    try:
        tree = ET.parse(filepath)
        root = tree.getroot()
    except ET.ParseError as e:
        print(f"Error parsing {filepath}: {e}")
        return None
    
    if root.tag != 'npc':
        print(f"Invalid NPC file: {filepath}")
        return None
    
    # Extract script path from attribute
    script = root.get('script', '')
    # Extract just the filename from path like "data/npc/scripts/alexander.lua"
    if script:
        script = os.path.basename(script)
    
    npc = {
        'name': root.get('name', 'Unknown'),
        'script': script,
        'walkinterval': root.get('walkinterval', '2000'),
        'floorchange': root.get('floorchange', '0') == '1',
        'attackable': root.get('attackable', '0') == '1',
        'skull': root.get('skull', '0'),
        'health': 100,
        'maxHealth': 100,
        'look': {},
        'parameters': {}
    }
    
    health_node = root.find('health')
    if health_node is not None:
        npc['health'] = int(health_node.get('now', '100'))
        npc['maxHealth'] = int(health_node.get('max', '100'))
    
    look_node = root.find('look')
    if look_node is not None:
        npc['look'] = {
            'type': look_node.get('type', '136'),
            'head': look_node.get('head', '0'),
            'body': look_node.get('body', '0'),
            'legs': look_node.get('legs', '0'),
            'feet': look_node.get('feet', '0'),
            'addons': look_node.get('addons', '0'),
        }
    
    params_node = root.find('parameters')
    if params_node is not None:
        for param in params_node.findall('parameter'):
            key = param.get('key', '')
            value = param.get('value', '')
            if key:
                npc['parameters'][key] = value
    
    return npc

def generate_lua_npc(npc, scripts_dir):
    """Generate Lua NPC file content from NPC data."""
    name = npc['name']
    script = npc['script']
    
    # Check if script file exists
    script_exists = False
    if script:
        script_path = os.path.join(scripts_dir, script)
        script_exists = os.path.exists(script_path)
    
    greet_msg = npc['parameters'].get('message_greet', 'Hello |PLAYERNAME|!')
    farewell_msg = npc['parameters'].get('message_farewell', 'Goodbye!')
    
    greet_lua = process_message(greet_msg)
    farewell_lua = process_message(farewell_msg)
    
    floorchange = 'true' if npc['floorchange'] else 'false'
    attackable = 'true' if npc['attackable'] else 'false'
    
    # Generate parameters section
    params_lua = ""
    for key, value in npc['parameters'].items():
        escaped_value = value.replace('"', '\\"')
        params_lua += f'npcType:parameter("{key}", "{escaped_value}")\n'
    
    # If script exists, use legacy script system
    if script_exists:
        lua_content = f'''-- {name} NPC - Uses legacy script system
local internalNpcName = "{name}"
local npcType = Game.createNpcType(internalNpcName)

npcType:name(internalNpcName)
npcType:nameDescription("{name}")

npcType:health({npc['health']})
npcType:maxHealth({npc['maxHealth']})
npcType:speed(100)
npcType:walkInterval({npc['walkinterval']})
npcType:walkRadius(2)

npcType:floorChange({floorchange})
npcType:attackable({attackable})
npcType:speechBubble(SPEECHBUBBLE_TRADE)

npcType:outfit({{
	lookType = {npc['look'].get('type', '136')},
	lookHead = {npc['look'].get('head', '0')},
	lookBody = {npc['look'].get('body', '0')},
	lookLegs = {npc['look'].get('legs', '0')},
	lookFeet = {npc['look'].get('feet', '0')},
	lookAddons = {npc['look'].get('addons', '0')},
}})

-- Parameters for NpcHandler modules
{params_lua}
-- Use legacy script for full NPC functionality
npcType:script("{script}")

npcType:register()
'''
    else:
        # Use inline callbacks for simple NPCs
        lua_content = f'''-- {name} NPC - Inline callbacks
local internalNpcName = "{name}"
local npcType = Game.createNpcType(internalNpcName)

npcType:name(internalNpcName)
npcType:nameDescription("{name}")

npcType:health({npc['health']})
npcType:maxHealth({npc['maxHealth']})
npcType:speed(100)
npcType:walkInterval({npc['walkinterval']})
npcType:walkRadius(2)

npcType:floorChange({floorchange})
npcType:attackable({attackable})
npcType:speechBubble(SPEECHBUBBLE_NORMAL)

npcType:outfit({{
	lookType = {npc['look'].get('type', '136')},
	lookHead = {npc['look'].get('head', '0')},
	lookBody = {npc['look'].get('body', '0')},
	lookLegs = {npc['look'].get('legs', '0')},
	lookFeet = {npc['look'].get('feet', '0')},
	lookAddons = {npc['look'].get('addons', '0')},
}})

-- NPC Callbacks
npcType:onAppear(function(npc, creature)
end)

npcType:onDisappear(function(npc, creature)
end)

npcType:onMove(function(npc, creature, oldPos, newPos)
end)

npcType:onSay(function(npc, creature, type, text)
	if not creature:isPlayer() then
		return
	end
	
	local player = creature:getPlayer()
	local lowerText = text:lower()
	
	if lowerText:find("hi") or lowerText:find("hello") then
		npc:say({greet_lua}, TALKTYPE_SAY)
		return
	end
	
	if lowerText:find("bye") or lowerText:find("farewell") then
		npc:say({farewell_lua}, TALKTYPE_SAY)
		return
	end
end)

npcType:onCloseChannel(function(npc, creature)
	if creature:isPlayer() then
		npc:say("Goodbye!", TALKTYPE_SAY)
	end
end)

npcType:onThink(function(npc, interval)
end)

npcType:register()
'''
    return lua_content

def convert_npc_file(xml_path, output_dir, scripts_dir, force=False):
    """Convert a single NPC XML file to Lua."""
    npc = parse_xml_npc(xml_path)
    if not npc:
        return False
    
    name = npc['name'].lower().replace(' ', '_')
    lua_filename = f"{name}.lua"
    lua_path = os.path.join(output_dir, lua_filename)
    
    if os.path.exists(lua_path) and not force:
        print(f"Skipping {npc['name']} - already exists")
        return False
    
    lua_content = generate_lua_npc(npc, scripts_dir)
    
    with open(lua_path, 'w') as f:
        f.write(lua_content)
    
    script_info = f" (uses script: {npc['script']})" if npc['script'] else " (inline callbacks)"
    print(f"Converted: {npc['name']} -> {lua_filename}{script_info}")
    return True

def main():
    force = '--force' in sys.argv
    args = [a for a in sys.argv[1:] if not a.startswith('--')]
    
    if len(args) < 1:
        input_dir = "/home/crixu/Downloads/KARMIA/data/npc"
    else:
        input_dir = args[0]
    
    base_dir = os.path.join(os.path.dirname(__file__), '..')
    output_dir = os.path.join(base_dir, 'data', 'npc', 'lua')
    scripts_dir = os.path.join(base_dir, 'data', 'npc', 'scripts')
    
    if not os.path.exists(input_dir):
        print(f"Input directory not found: {input_dir}")
        sys.exit(1)
    
    os.makedirs(output_dir, exist_ok=True)
    
    converted = 0
    for filename in os.listdir(input_dir):
        if filename.endswith('.xml'):
            xml_path = os.path.join(input_dir, filename)
            if convert_npc_file(xml_path, output_dir, scripts_dir, force):
                converted += 1
    
    print(f"\nConverted {converted} NPC files to Lua format.")

if __name__ == '__main__':
    main()
