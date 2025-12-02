#!/usr/bin/env python3
"""
Convert NPC XML files to Lua format for The Wolf Project
"""

import os
import xml.etree.ElementTree as ET
import re

def sanitize_name(name):
    """Convert NPC name to valid Lua variable name"""
    # Replace spaces and special chars
    safe = re.sub(r'[^a-zA-Z0-9]', '_', name)
    # Ensure it doesn't start with a number
    if safe and safe[0].isdigit():
        safe = '_' + safe
    return safe.lower()

def convert_npc_to_lua(xml_file, output_dir, scripts_dir):
    """Convert a single NPC XML file to Lua"""
    try:
        tree = ET.parse(xml_file)
        root = tree.getroot()
        
        if root.tag != 'npc':
            print(f"  Skipping {xml_file}: not an NPC file")
            return None
        
        # Get NPC name
        npc_name = root.attrib.get('name', '')
        if not npc_name:
            print(f"  Skipping {xml_file}: no name")
            return None
        
        # Get script file
        script_file = root.attrib.get('script', '')
        
        # Get basic attributes
        walk_interval = root.attrib.get('walkinterval', '2000')
        walk_radius = root.attrib.get('walkradius', '2')
        floor_change = root.attrib.get('floorchange', '0')
        attackable = root.attrib.get('attackable', '0')
        speed = root.attrib.get('speed', '100')
        speech_bubble = root.attrib.get('speechbubble', '0')
        
        # Get health
        health = '100'
        max_health = '100'
        health_node = root.find('health')
        if health_node is not None:
            health = health_node.attrib.get('now', '100')
            max_health = health_node.attrib.get('max', '100')
        
        # Get outfit
        outfit = {}
        look_node = root.find('look')
        if look_node is not None:
            if 'type' in look_node.attrib:
                outfit['lookType'] = look_node.attrib.get('type', '0')
                outfit['lookHead'] = look_node.attrib.get('head', '0')
                outfit['lookBody'] = look_node.attrib.get('body', '0')
                outfit['lookLegs'] = look_node.attrib.get('legs', '0')
                outfit['lookFeet'] = look_node.attrib.get('feet', '0')
                outfit['lookAddons'] = look_node.attrib.get('addons', '0')
            elif 'typeex' in look_node.attrib:
                outfit['lookTypeEx'] = look_node.attrib.get('typeex', '0')
        
        # Get parameters
        parameters = {}
        params_node = root.find('parameters')
        if params_node is not None:
            for param in params_node.findall('parameter'):
                key = param.attrib.get('key', '')
                value = param.attrib.get('value', '')
                if key:
                    parameters[key] = value
        
        # Generate Lua file
        safe_name = sanitize_name(npc_name)
        lua_content = f'''-- {npc_name}
local internalNpcName = "{npc_name}"
local npcType = Game.createNpcType(internalNpcName)

npcType:name(internalNpcName)
npcType:nameDescription(internalNpcName)

npcType:health({health})
npcType:maxHealth({max_health})
npcType:speed({speed})
npcType:walkInterval({walk_interval})
npcType:walkRadius({walk_radius})

npcType:floorChange({('true' if floor_change == '1' else 'false')})
npcType:attackable({('true' if attackable == '1' else 'false')})
'''
        
        if speech_bubble != '0':
            lua_content += f'npcType:speechBubble({speech_bubble})\n'
        
        # Add outfit
        if outfit:
            lua_content += '\nnpcType:outfit({\n'
            for key, value in outfit.items():
                lua_content += f'\t{key} = {value},\n'
            lua_content += '})\n'
        
        # Add parameters
        for key, value in parameters.items():
            # Escape quotes in value
            escaped_value = value.replace('"', '\\"')
            lua_content += f'npcType:parameter("{key}", "{escaped_value}")\n'
        
        # Add script reference
        if script_file:
            lua_content += f'\nnpcType:script("{script_file}")\n'
        
        lua_content += '\nnpcType:register()\n'
        
        # Write to file
        output_file = os.path.join(output_dir, f'{safe_name}.lua')
        with open(output_file, 'w', encoding='utf-8') as f:
            f.write(lua_content)
        
        return npc_name
        
    except ET.ParseError as e:
        print(f"  Error parsing {xml_file}: {e}")
        return None
    except Exception as e:
        print(f"  Error converting {xml_file}: {e}")
        return None

def main():
    # Paths
    npc_xml_dir = '/home/crixu/The-Wolf-Project/data/npc'
    npc_lua_dir = '/home/crixu/The-Wolf-Project/data/npc/lua'
    scripts_dir = '/home/crixu/The-Wolf-Project/data/npc/scripts'
    
    # Create output directory
    os.makedirs(npc_lua_dir, exist_ok=True)
    
    print("Converting NPC XML files to Lua...")
    print(f"Source: {npc_xml_dir}")
    print(f"Output: {npc_lua_dir}")
    print()
    
    converted = 0
    failed = 0
    
    # Find all XML files
    for filename in os.listdir(npc_xml_dir):
        if filename.endswith('.xml'):
            xml_path = os.path.join(npc_xml_dir, filename)
            result = convert_npc_to_lua(xml_path, npc_lua_dir, scripts_dir)
            if result:
                converted += 1
                print(f"  ✓ {result}")
            else:
                failed += 1
    
    print()
    print(f"Conversion complete!")
    print(f"  Converted: {converted}")
    print(f"  Failed: {failed}")

if __name__ == '__main__':
    main()
