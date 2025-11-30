# Script Interface Reference

This document provides a reference for the Lua scripting interface in The Wolf Project.

## Table of Contents
- [Introduction](#introduction)
- [Script Types](#script-types)
- [Global Functions](#global-functions)
- [Classes](#classes)
- [Events](#events)
- [Examples](#examples)

---

## Introduction

The Wolf Project uses Lua for game scripting. Scripts are located in the `data/` directory and are organized by type.

### Script Locations

```
data/
├── actions/         # Item use scripts
├── creaturescripts/ # Creature event scripts
├── events/          # Core event callbacks
├── globalevents/    # Server-wide events
├── movements/       # Movement trigger scripts
├── npc/             # NPC scripts
├── spells/          # Spell scripts
├── talkactions/     # Chat command scripts
└── weapons/         # Weapon scripts
```

---

## Script Types

### Actions
Triggered when players use items.

```lua
-- data/actions/scripts/example.lua
function onUse(player, item, fromPosition, target, toPosition, isHotkey)
    player:sendTextMessage(MESSAGE_INFO_DESCR, "You used an item!")
    return true
end
```

Register in `data/actions/actions.xml`:
```xml
<action itemid="1234" script="example.lua" />
```

### Creature Scripts
Triggered by creature events (login, death, etc.).

```lua
-- data/creaturescripts/scripts/login.lua
function onLogin(player)
    player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "Welcome to The Wolf Project!")
    return true
end
```

### Global Events
Server-wide timed or startup events.

```lua
-- data/globalevents/scripts/startup.lua
function onStartup()
    print("Server started successfully!")
    return true
end
```

### Movements
Triggered by stepping on tiles or equipping items.

```lua
-- data/movements/scripts/tile_trigger.lua
function onStepIn(creature, item, position, fromPosition)
    if creature:isPlayer() then
        creature:sendTextMessage(MESSAGE_INFO_DESCR, "You stepped on a special tile!")
    end
    return true
end
```

### Spells
Magic spell implementations.

```lua
-- data/spells/scripts/attack/fire_wave.lua
function onCastSpell(creature, variant)
    return combat:execute(creature, variant)
end
```

### Talk Actions
Chat commands (starting with `/` or `!`).

```lua
-- data/talkactions/scripts/info.lua
function onSay(player, words, param)
    player:sendTextMessage(MESSAGE_INFO_DESCR, "Server: The Wolf Project")
    return false  -- Don't show the command in chat
end
```

---

## Global Functions

### Output

```lua
print("Message")                    -- Console output
doPlayerSendTextMessage(cid, type, message)  -- Send message to player
```

### Database

```lua
db.query("SELECT * FROM players")
db.storeQuery("SELECT * FROM players WHERE id = " .. playerId)
db.escapeString(string)
```

### Configuration

```lua
configManager.getNumber(configKeys.RATE_EXP)
configManager.getString(configKeys.SERVER_NAME)
configManager.getBoolean(configKeys.FREE_PREMIUM)
```

### Game

```lua
Game.getPlayers()                   -- Get all online players
Game.getPlayerByName(name)          -- Get player by name
Game.getMonsterByName(name)         -- Get monster type
Game.createMonster(name, position)  -- Spawn monster
Game.createItem(itemId, count, position)  -- Create item
```

---

## Classes

### Player

```lua
local player = Player(playerId)

-- Information
player:getName()
player:getLevel()
player:getVocation()
player:getHealth()
player:getMaxHealth()
player:getMana()
player:getMaxMana()
player:getPosition()

-- Modification
player:setHealth(amount)
player:addHealth(amount)
player:setMana(amount)
player:addMana(amount)
player:addExperience(amount)
player:addSkillTries(skillId, tries)

-- Inventory
player:addItem(itemId, count)
player:removeItem(itemId, count)
player:getItemCount(itemId)
player:getSlotItem(slot)

-- Communication
player:sendTextMessage(type, message)
player:sendChannelMessage(author, message, type, channelId)

-- Teleportation
player:teleportTo(position)

-- Storage
player:getStorageValue(key)
player:setStorageValue(key, value)
```

### Creature

```lua
local creature = Creature(creatureId)

creature:getName()
creature:getHealth()
creature:getMaxHealth()
creature:getPosition()
creature:getDirection()

creature:setHealth(amount)
creature:addHealth(amount)
creature:teleportTo(position)
creature:say(text, type)
creature:remove()
```

### Monster

```lua
local monster = Monster(monsterId)

monster:getName()
monster:getType()
monster:getMaster()
monster:setMaster(creature)
```

### Item

```lua
local item = Item(uid)

item:getId()
item:getName()
item:getCount()
item:getPosition()

item:setCount(count)
item:remove()
item:moveTo(position)
item:transform(newItemId)
```

### Position

```lua
local pos = Position(x, y, z)

pos:getDistance(otherPosition)
pos:sendMagicEffect(effect)
pos:sendDistanceEffect(toPosition, effect)

-- Get tile at position
local tile = Tile(pos)
tile:getCreatures()
tile:getItems()
tile:getGround()
```

### Combat

```lua
local combat = Combat()

combat:setParameter(key, value)
combat:setArea(area)
combat:setFormula(type, mina, minb, maxa, maxb)
combat:execute(creature, variant)
```

---

## Events

### Creature Events

| Event | Parameters | Description |
|-------|------------|-------------|
| `onLogin` | `player` | Player logs in |
| `onLogout` | `player` | Player logs out |
| `onDeath` | `creature, corpse, killer, mostDamage, unjust, mostDamageUnjust` | Creature dies |
| `onKill` | `creature, target` | Creature kills target |
| `onAdvance` | `player, skill, oldLevel, newLevel` | Skill level up |
| `onHealthChange` | `creature, attacker, damage, type, ...` | Health changes |

### Global Events

| Event | Parameters | Description |
|-------|------------|-------------|
| `onStartup` | none | Server starts |
| `onShutdown` | none | Server shuts down |
| `onRecord` | `current, old` | New player record |
| `onTime` | `interval` | Timed event |

---

## Examples

### Welcome Message on Login

```lua
-- data/creaturescripts/scripts/welcome.lua
function onLogin(player)
    local message = string.format(
        "Welcome %s! You are level %d.",
        player:getName(),
        player:getLevel()
    )
    player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, message)
    return true
end
```

### Custom Command

```lua
-- data/talkactions/scripts/pos.lua
function onSay(player, words, param)
    local pos = player:getPosition()
    local message = string.format(
        "Your position: X=%d, Y=%d, Z=%d",
        pos.x, pos.y, pos.z
    )
    player:sendTextMessage(MESSAGE_INFO_DESCR, message)
    return false
end
```

### Item with Effect

```lua
-- data/actions/scripts/magic_scroll.lua
function onUse(player, item, fromPosition, target, toPosition, isHotkey)
    local pos = player:getPosition()
    
    -- Visual effect
    pos:sendMagicEffect(CONST_ME_MAGIC_BLUE)
    
    -- Add mana
    player:addMana(100)
    
    -- Message
    player:sendTextMessage(MESSAGE_INFO_DESCR, "You feel magical energy flow through you!")
    
    -- Remove the item
    item:remove(1)
    
    return true
end
```

### Timed Global Event

```lua
-- data/globalevents/scripts/announce.lua
function onTime(interval)
    Game.broadcastMessage("Server save in 5 minutes!", MESSAGE_STATUS_WARNING)
    return true
end
```

---

## More Resources

- [TFS Wiki](https://github.com/otland/forgottenserver/wiki)
- [OTLand Tutorials](https://otland.net/forums/tutorials.117/)
- [Lua Reference Manual](https://www.lua.org/manual/5.2/)
