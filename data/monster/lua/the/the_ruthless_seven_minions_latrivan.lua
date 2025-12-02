-- Latrivan
-- Auto-converted from XML

local monster = Game.createMonsterType("Latrivan")
if not monster then return end

monster:name("Latrivan")
monster:nameDescription("Latrivan")
monster:health(25000)
monster:maxHealth(25000)
monster:experience(10000)
monster:speed(340)
monster:race(RACE_FIRE)
monster:corpseId(8721)
monster:outfit({lookType = 12, lookHead = 120, lookBody = 128, lookLegs = 121, lookFeet = 111})
monster:defense(45)
monster:armor(35)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(85)

-- Resistances
monster:elements({
    {type = COMBAT_ICEDAMAGE, percent = -1},
    {type = COMBAT_ENERGYDAMAGE, percent = 1},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_CURSED, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "I might reward you for killing my brother ~ with a swift death!", yell = true},
    {text = "Colateral damage is so fun!", yell = false},
    {text = "Golgordan you fool!", yell = false},
    {text = "We are the brothers of fear!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 273},
    {id = 7591, chance = 55000},
    {id = 2387, chance = 30000},
    {id = 6300, chance = 25000},
    {id = 2214, chance = 25000},
    {id = 2144, chance = 20000, maxCount = 13},
    {id = 2149, chance = 20000, maxCount = 10},
    {id = 2396, chance = 15000},
    {id = 2162, chance = 15000},
    {id = 2170, chance = 15000},
    {id = 2146, chance = 15000, maxCount = 10},
    {id = 2143, chance = 15000, maxCount = 13},
    {id = 2520, chance = 10000},
    {id = 6500, chance = 10000},
    {id = 2167, chance = 10000},
    {id = 2393, chance = 10000},
    {id = 9971, chance = 10000},
    {id = 2179, chance = 10000},
    {id = 2470, chance = 10000},
    {id = 2158, chance = 5000},
    {id = 2462, chance = 5000},
    {id = 2432, chance = 5000},
    {id = 2155, chance = 5000},
    {id = 2164, chance = 5000},
    {id = 2402, chance = 5000},
    {id = 2150, chance = 15000, maxCount = 12},
    {id = 2182, chance = 5000},
    {id = 2165, chance = 5000},
    {id = 2197, chance = 5000},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-1
-- name=fire, interval=2000, chance=10, max=-850, length=8, spread=3, areaEffect=firearea
-- name=fire, interval=1000, chance=10, min=-50, max=-250, length=7, areaEffect=explosion
-- name=death, interval=2000, chance=10, range=4, max=-600, radius=1, shootEffect=death, areaEffect=mortarea
-- name=fire, interval=2000, chance=15, range=7, min=-60, max=-200, radius=4, shootEffect=fire, areaEffect=firearea
--]]

monster:register()
