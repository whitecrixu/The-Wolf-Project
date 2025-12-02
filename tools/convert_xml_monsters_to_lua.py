#!/usr/bin/env python3
"""
Advanced XML Monster to Lua Converter
Converts TFS XML monster files to RevScriptSys Lua format with full attack support.
"""

import os
import re
import glob
import xml.etree.ElementTree as ET
from pathlib import Path

# Combat type mapping
COMBAT_TYPES = {
    'physical': 'COMBAT_PHYSICALDAMAGE',
    'energy': 'COMBAT_ENERGYDAMAGE',
    'earth': 'COMBAT_EARTHDAMAGE',
    'fire': 'COMBAT_FIREDAMAGE',
    'ice': 'COMBAT_ICEDAMAGE',
    'holy': 'COMBAT_HOLYDAMAGE',
    'death': 'COMBAT_DEATHDAMAGE',
    'drown': 'COMBAT_DROWNDAMAGE',
    'lifedrain': 'COMBAT_LIFEDRAIN',
    'manadrain': 'COMBAT_MANADRAIN',
    'healing': 'COMBAT_HEALING',
}

# Race mapping
RACE_MAPPING = {
    'blood': 'RACE_BLOOD',
    'venom': 'RACE_VENOM',
    'undead': 'RACE_UNDEAD',
    'fire': 'RACE_FIRE',
    'energy': 'RACE_ENERGY',
}

# Condition mapping
CONDITION_MAPPING = {
    'poison': 'CONDITION_POISON',
    'fire': 'CONDITION_FIRE',
    'energy': 'CONDITION_ENERGY',
    'drown': 'CONDITION_DROWN',
    'paralyze': 'CONDITION_PARALYZE',
    'outfit': 'CONDITION_OUTFIT',
    'invisible': 'CONDITION_INVISIBLE',
    'drunk': 'CONDITION_DRUNK',
    'freeze': 'CONDITION_FREEZING',
    'bleed': 'CONDITION_BLEEDING',
    'cursed': 'CONDITION_CURSED',
}

def parse_attack(attack_elem):
    """Parse an attack element from XML."""
    attack = {}
    attack['name'] = attack_elem.get('name', 'melee')
    attack['interval'] = int(attack_elem.get('interval', 2000))
    attack['chance'] = int(attack_elem.get('chance', 100))
    
    # Melee attack
    if attack['name'] == 'melee':
        skill = int(attack_elem.get('skill', 0))
        atk = int(attack_elem.get('attack', 0))
        # Calculate damage from skill and attack
        min_dmg = int(attack_elem.get('min', 0))
        max_dmg = int(attack_elem.get('max', 0))
        
        if max_dmg == 0 and (skill > 0 or atk > 0):
            # Approximate damage formula
            max_dmg = -(skill + atk)
            min_dmg = -max(0, int(max_dmg * 0.5))
        
        attack['minDamage'] = min_dmg
        attack['maxDamage'] = max_dmg if max_dmg < 0 else -max_dmg
        attack['type'] = 'melee'
    else:
        # Spell attack
        attack['minDamage'] = int(attack_elem.get('min', 0))
        attack['maxDamage'] = int(attack_elem.get('max', 0))
        attack['range'] = int(attack_elem.get('range', 1))
        attack['radius'] = int(attack_elem.get('radius', 0))
        attack['length'] = int(attack_elem.get('length', 0))
        attack['spread'] = int(attack_elem.get('spread', 0))
        attack['target'] = attack_elem.get('target', '1') == '1'
        attack['shootEffect'] = attack_elem.get('shootEffect', '')
        attack['areaEffect'] = attack_elem.get('areaEffect', '')
        attack['type'] = 'spell'
    
    return attack

def parse_element_resistances(elements_elem):
    """Parse element resistances from XML."""
    resistances = []
    if elements_elem is None:
        return resistances
    
    for elem in elements_elem.findall('element'):
        for attr, value in elem.attrib.items():
            if attr.endswith('Percent'):
                element_type = attr.replace('Percent', '').lower()
                if element_type in ['physical', 'energy', 'earth', 'fire', 'ice', 'holy', 'death', 'drown', 'lifedrain', 'manadrain']:
                    combat_type = COMBAT_TYPES.get(element_type, f'COMBAT_{element_type.upper()}DAMAGE')
                    resistances.append({
                        'type': combat_type,
                        'percent': int(value)
                    })
    return resistances

def parse_immunities(immunities_elem):
    """Parse immunities from XML."""
    immunities = []
    if immunities_elem is None:
        return immunities
    
    for immunity in immunities_elem.findall('immunity'):
        for attr, value in immunity.attrib.items():
            if value == '1':
                if attr in CONDITION_MAPPING:
                    immunities.append({
                        'condition': CONDITION_MAPPING[attr],
                        'immunity': True
                    })
                elif attr in COMBAT_TYPES or attr.replace('Damage', '').lower() in COMBAT_TYPES:
                    element = attr.replace('Damage', '').lower()
                    if element in COMBAT_TYPES:
                        immunities.append({
                            'type': COMBAT_TYPES[element],
                            'combat': True
                        })
    return immunities

def parse_voices(voices_elem):
    """Parse voices from XML."""
    voices = []
    if voices_elem is None:
        return voices, 5000, 10
    
    interval = int(voices_elem.get('interval', 5000))
    chance = int(voices_elem.get('chance', 10))
    
    for voice in voices_elem.findall('voice'):
        sentence = voice.get('sentence', '')
        yell = voice.get('yell', '0') == '1'
        if sentence:
            voices.append({
                'text': sentence,
                'yell': yell
            })
    
    return voices, interval, chance

def parse_loot(loot_elem):
    """Parse loot from XML."""
    loot_items = []
    if loot_elem is None:
        return loot_items
    
    for item in loot_elem.findall('item'):
        loot_item = {}
        loot_item['id'] = int(item.get('id', 0))
        loot_item['chance'] = int(item.get('chance', 10000))
        loot_item['maxCount'] = int(item.get('countmax', 1))
        
        # Check for nested items (containers)
        nested_items = item.findall('item')
        if nested_items:
            loot_item['items'] = []
            for nested in nested_items:
                nested_item = {
                    'id': int(nested.get('id', 0)),
                    'chance': int(nested.get('chance', 10000)),
                    'maxCount': int(nested.get('countmax', 1))
                }
                loot_item['items'].append(nested_item)
        
        loot_items.append(loot_item)
    
    return loot_items

def convert_monster_xml_to_lua(xml_path):
    """Convert a single monster XML file to Lua."""
    try:
        tree = ET.parse(xml_path)
        root = tree.getroot()
    except ET.ParseError as e:
        print(f"Error parsing {xml_path}: {e}")
        return None
    
    # Basic attributes
    name = root.get('name', 'Unknown')
    name_desc = root.get('nameDescription', f'a {name.lower()}')
    race = root.get('race', 'blood')
    experience = int(root.get('experience', 0))
    speed = int(root.get('speed', 100))
    mana_cost = int(root.get('manacost', 0))
    
    # Health
    health_elem = root.find('health')
    health = int(health_elem.get('max', 100)) if health_elem is not None else 100
    
    # Look
    look_elem = root.find('look')
    if look_elem is not None:
        look_type = int(look_elem.get('type', 0))
        corpse = int(look_elem.get('corpse', 0))
        look_head = int(look_elem.get('head', 0))
        look_body = int(look_elem.get('body', 0))
        look_legs = int(look_elem.get('legs', 0))
        look_feet = int(look_elem.get('feet', 0))
        look_addons = int(look_elem.get('addons', 0))
        look_mount = int(look_elem.get('mount', 0))
        look_typeex = int(look_elem.get('typeex', 0))
    else:
        look_type = 0
        corpse = 0
        look_head = look_body = look_legs = look_feet = look_addons = look_mount = look_typeex = 0
    
    # Flags
    flags_elem = root.find('flags')
    flags = {}
    if flags_elem is not None:
        for flag in flags_elem.findall('flag'):
            for attr, value in flag.attrib.items():
                flags[attr.lower()] = value == '1' or (value.isdigit() and int(value) > 0)
    
    # Defenses
    defenses_elem = root.find('defenses')
    armor = 0
    defense = 0
    if defenses_elem is not None:
        armor = int(defenses_elem.get('armor', 0))
        defense = int(defenses_elem.get('defense', 0))
    
    # Target change
    target_elem = root.find('targetchange')
    target_interval = 5000
    target_chance = 0
    if target_elem is not None:
        target_interval = int(target_elem.get('interval', 5000))
        target_chance = int(target_elem.get('chance', 0))
    
    # Attacks
    attacks_elem = root.find('attacks')
    attacks = []
    if attacks_elem is not None:
        for attack_elem in attacks_elem.findall('attack'):
            attacks.append(parse_attack(attack_elem))
    
    # Elements (resistances)
    elements_elem = root.find('elements')
    resistances = parse_element_resistances(elements_elem)
    
    # Immunities
    immunities_elem = root.find('immunities')
    immunities = parse_immunities(immunities_elem)
    
    # Voices
    voices_elem = root.find('voices')
    voices, voice_interval, voice_chance = parse_voices(voices_elem)
    
    # Loot
    loot_elem = root.find('loot')
    loot = parse_loot(loot_elem)
    
    # Generate Lua code
    lua_code = generate_lua_monster(
        name, name_desc, race, experience, speed, mana_cost,
        health, look_type, corpse, look_head, look_body, look_legs, look_feet, look_addons, look_mount, look_typeex,
        flags, armor, defense, target_interval, target_chance,
        attacks, resistances, immunities, voices, voice_interval, voice_chance, loot
    )
    
    return lua_code

def generate_lua_monster(name, name_desc, race, experience, speed, mana_cost,
                         health, look_type, corpse, look_head, look_body, look_legs, look_feet, look_addons, look_mount, look_typeex,
                         flags, armor, defense, target_interval, target_chance,
                         attacks, resistances, immunities, voices, voice_interval, voice_chance, loot):
    """Generate Lua code for a monster."""
    
    lua = []
    lua.append(f'-- {name}')
    lua.append(f'-- Converted from XML')
    lua.append('')
    lua.append(f'local monster = Game.createMonsterType("{name}")')
    lua.append('if not monster then return end')
    lua.append('')
    
    # Basic attributes
    lua.append(f'monster:name("{name}")')
    lua.append(f'monster:nameDescription("{name_desc}")')
    lua.append(f'monster:health({health})')
    lua.append(f'monster:maxHealth({health})')
    lua.append(f'monster:experience({experience})')
    lua.append(f'monster:speed({speed})')
    
    race_const = RACE_MAPPING.get(race.lower(), 'RACE_BLOOD')
    lua.append(f'monster:race({race_const})')
    
    if mana_cost > 0:
        lua.append(f'monster:manaCost({mana_cost})')
    
    if corpse > 0:
        lua.append(f'monster:corpseId({corpse})')
    
    # Outfit
    if look_type > 0:
        outfit_parts = [f'lookType = {look_type}']
        if look_head > 0:
            outfit_parts.append(f'lookHead = {look_head}')
        if look_body > 0:
            outfit_parts.append(f'lookBody = {look_body}')
        if look_legs > 0:
            outfit_parts.append(f'lookLegs = {look_legs}')
        if look_feet > 0:
            outfit_parts.append(f'lookFeet = {look_feet}')
        if look_addons > 0:
            outfit_parts.append(f'lookAddons = {look_addons}')
        if look_mount > 0:
            outfit_parts.append(f'lookMount = {look_mount}')
        lua.append(f'monster:outfit({{{", ".join(outfit_parts)}}})')
    elif look_typeex > 0:
        lua.append(f'monster:outfit({{lookTypeEx = {look_typeex}}})')
    
    lua.append(f'monster:defense({defense})')
    lua.append(f'monster:armor({armor})')
    
    # Flags
    if flags.get('targetdistance', 1) > 1 if isinstance(flags.get('targetdistance'), int) else flags.get('targetdistance', False):
        td = flags.get('targetdistance', 1)
        if isinstance(td, bool):
            td = 4 if td else 1
        lua.append(f'monster:targetDistance({td})')
    
    if flags.get('runonhealth', 0):
        rh = flags.get('runonhealth', 0)
        if isinstance(rh, bool):
            rh = int(health * 0.1) if rh else 0
        lua.append(f'monster:runHealth({rh})')
    
    lua.append('')
    lua.append('-- Flags')
    lua.append(f'monster:attackable({str(flags.get("attackable", True)).lower()})')
    lua.append(f'monster:hostile({str(flags.get("hostile", True)).lower()})')
    
    if flags.get('summonable', False):
        lua.append(f'monster:isSummonable(true)')
    if flags.get('convinceable', False):
        lua.append(f'monster:isConvinceable(true)')
    if flags.get('illusionable', False):
        lua.append(f'monster:isIllusionable(true)')
    if flags.get('pushable', False):
        lua.append(f'monster:pushable(true)')
    if flags.get('canpushitems', False):
        lua.append(f'monster:canPushItems(true)')
    if flags.get('canpushcreatures', False):
        lua.append(f'monster:canPushCreatures(true)')
    
    static_attack = flags.get('staticattack', 90)
    if isinstance(static_attack, bool):
        static_attack = 90 if static_attack else 0
    lua.append(f'monster:staticAttackChance({static_attack})')
    
    # Resistances
    if resistances:
        lua.append('')
        lua.append('-- Resistances')
        res_strs = []
        for res in resistances:
            res_strs.append(f'    {{type = {res["type"]}, percent = {res["percent"]}}}')
        lua.append('monster:elements({')
        lua.append(',\n'.join(res_strs))
        lua.append('})')
    
    # Immunities
    if immunities:
        lua.append('')
        lua.append('-- Immunities')
        imm_strs = []
        for imm in immunities:
            if 'condition' in imm:
                imm_strs.append(f'    {{condition = {imm["condition"]}, immunity = true}}')
            elif 'type' in imm:
                imm_strs.append(f'    {{type = {imm["type"]}, combat = true}}')
        if imm_strs:
            lua.append('monster:immunities({')
            lua.append(',\n'.join(imm_strs))
            lua.append('})')
    
    # Voices
    if voices:
        lua.append('')
        lua.append('-- Voices')
        voice_strs = []
        for voice in voices:
            text = voice['text'].replace('"', '\\"')
            yell_str = 'true' if voice['yell'] else 'false'
            voice_strs.append(f'    {{text = "{text}", yell = {yell_str}}}')
        lua.append('monster:voices({')
        lua.append(',\n'.join(voice_strs))
        lua.append('})')
    
    # Loot
    if loot:
        lua.append('')
        lua.append('-- Loot')
        loot_strs = []
        for item in loot:
            parts = [f'id = {item["id"]}', f'chance = {item["chance"]}']
            if item['maxCount'] > 1:
                parts.append(f'maxCount = {item["maxCount"]}')
            loot_strs.append(f'    {{{", ".join(parts)}}}')
        lua.append('monster:loot({')
        lua.append(',\n'.join(loot_strs))
        lua.append('})')
    
    # Attacks - THIS IS THE CRITICAL PART
    if attacks:
        lua.append('')
        lua.append('-- Attacks')
        attack_strs = []
        for attack in attacks:
            if attack['type'] == 'melee' or attack['name'] == 'melee':
                parts = [
                    'name = "melee"',
                    f'interval = {attack["interval"]}',
                    f'chance = {attack["chance"]}',
                    f'minDamage = {attack["minDamage"]}',
                    f'maxDamage = {attack["maxDamage"]}'
                ]
                attack_strs.append(f'    {{{", ".join(parts)}}}')
            else:
                # Spell attacks - now fully supported!
                parts = [f'name = "{attack["name"]}"']
                parts.append(f'interval = {attack["interval"]}')
                parts.append(f'chance = {attack["chance"]}')
                if attack.get('minDamage'):
                    parts.append(f'minDamage = {attack["minDamage"]}')
                if attack.get('maxDamage'):
                    parts.append(f'maxDamage = {attack["maxDamage"]}')
                if attack.get('range', 0) > 1:
                    parts.append(f'range = {attack["range"]}')
                if attack.get('radius', 0) > 0:
                    parts.append(f'radius = {attack["radius"]}')
                if attack.get('length', 0) > 0:
                    parts.append(f'length = {attack["length"]}')
                if attack.get('spread', 0) > 0:
                    parts.append(f'spread = {attack["spread"]}')
                attack_strs.append(f'    {{{", ".join(parts)}}}')
        
        lua.append('monster:attacks({')
        lua.append(',\n'.join(attack_strs))
        lua.append('})')
    else:
        # Add default melee attack based on health
        default_dmg = -max(5, health // 5)
        lua.append('')
        lua.append('-- Attacks (default melee)')
        lua.append('monster:attacks({')
        lua.append(f'    {{name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = {default_dmg}}}')
        lua.append('})')
    
    lua.append('')
    lua.append('monster:register()')
    lua.append('')
    
    return '\n'.join(lua)

def sanitize_filename(name):
    """Create a safe filename from monster name."""
    # Remove special characters and replace spaces
    safe = re.sub(r'[^\w\s-]', '', name.lower())
    safe = re.sub(r'[\s]+', '_', safe)
    return safe

def process_all_monsters(source_dir, dest_dir):
    """Process all XML monster files and convert to Lua."""
    
    if not os.path.exists(source_dir):
        print(f"Source directory not found: {source_dir}")
        return
    
    # Find all XML files
    xml_files = glob.glob(os.path.join(source_dir, '**', '*.xml'), recursive=True)
    
    # Filter out non-monster files
    xml_files = [f for f in xml_files if not f.endswith('monsters.xml')]
    
    converted = 0
    failed = 0
    
    for xml_path in xml_files:
        try:
            lua_code = convert_monster_xml_to_lua(xml_path)
            if lua_code is None:
                failed += 1
                continue
            
            # Determine output path
            rel_path = os.path.relpath(xml_path, source_dir)
            rel_dir = os.path.dirname(rel_path)
            
            # Sanitize directory name
            safe_dir = sanitize_filename(rel_dir) if rel_dir else ''
            
            # Get monster name from XML
            tree = ET.parse(xml_path)
            root = tree.getroot()
            monster_name = root.get('name', 'unknown')
            
            # Create output filename
            safe_name = sanitize_filename(f'{safe_dir}_{monster_name}' if safe_dir else monster_name)
            output_dir = os.path.join(dest_dir, safe_dir) if safe_dir else dest_dir
            output_path = os.path.join(output_dir, f'{safe_name}.lua')
            
            # Create directory if needed
            os.makedirs(output_dir, exist_ok=True)
            
            # Write Lua file
            with open(output_path, 'w') as f:
                f.write(lua_code)
            
            converted += 1
            print(f"Converted: {monster_name}")
            
        except Exception as e:
            print(f"Failed to convert {xml_path}: {e}")
            failed += 1
    
    print(f"\nTotal converted: {converted}")
    print(f"Total failed: {failed}")

def main():
    source_dir = '/home/crixu/otxserver-otxv3_8 (2)/path_11_x/data/monster'
    dest_dir = '/home/crixu/The-Wolf-Project/data/monster/lua'
    
    print(f"Converting monsters from: {source_dir}")
    print(f"Output directory: {dest_dir}")
    print()
    
    process_all_monsters(source_dir, dest_dir)

if __name__ == '__main__':
    main()
