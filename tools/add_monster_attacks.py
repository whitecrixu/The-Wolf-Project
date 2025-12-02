#!/usr/bin/env python3
"""
Script to add melee attacks to Lua monster files.
Parses commented attack sections and converts them to actual attacks.
"""

import os
import re
import glob

def extract_melee_damage(content):
    """Extract melee damage from commented attack section."""
    # Look for patterns like: -- name=melee, interval=2000, chance=100, max=-45
    melee_pattern = r'--\s*name=melee.*?max=(-?\d+)'
    match = re.search(melee_pattern, content)
    if match:
        return int(match.group(1))
    return None

def process_monster_file(filepath):
    """Process a single monster file to add attacks."""
    with open(filepath, 'r') as f:
        content = f.read()
    
    # Skip if already has attacks call
    if 'monster:attacks({' in content:
        return False
    
    # Check if there's a commented attack section
    if '-- Attacks' not in content:
        return False
    
    # Extract melee damage
    melee_damage = extract_melee_damage(content)
    
    if melee_damage is None:
        # Default melee based on monster health
        health_match = re.search(r'monster:health\((\d+)\)', content)
        if health_match:
            health = int(health_match.group(1))
            melee_damage = -max(10, health // 5)  # Roughly 20% of health as max damage
        else:
            melee_damage = -20
    
    # Ensure damage is negative
    if melee_damage > 0:
        melee_damage = -melee_damage
    
    # Build attack block
    attack_block = f"""-- Attacks
monster:attacks({{
    {{name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = {melee_damage}}},
}})

monster:register()"""
    
    # Replace old attack section and register
    # Pattern to match commented attacks and register
    pattern = r'-- Attacks.*?monster:register\(\)'
    
    new_content = re.sub(pattern, attack_block, content, flags=re.DOTALL)
    
    if new_content != content:
        with open(filepath, 'w') as f:
            f.write(new_content)
        return True
    
    return False

def main():
    monster_dir = '/home/crixu/The-Wolf-Project/data/monster/lua'
    
    if not os.path.exists(monster_dir):
        print(f"Monster directory not found: {monster_dir}")
        return
    
    # Find all Lua files
    lua_files = glob.glob(os.path.join(monster_dir, '**', '*.lua'), recursive=True)
    
    updated = 0
    for filepath in lua_files:
        if process_monster_file(filepath):
            print(f"Updated: {os.path.basename(filepath)}")
            updated += 1
    
    print(f"\nTotal updated: {updated}/{len(lua_files)} files")

if __name__ == '__main__':
    main()
