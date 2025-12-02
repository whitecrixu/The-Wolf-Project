-- Zushuka
-- Auto-converted from XML

local monster = Game.createMonsterType("Zushuka")
if not monster then return end

monster:name("Zushuka")
monster:nameDescription("zushuka")
monster:health(15000)
monster:maxHealth(15000)
monster:experience(9000)
monster:speed(220)
monster:race(RACE_BLOOD)
monster:corpseId(20423)
monster:outfit({lookType = 149, lookHead = 86, lookBody = 12, lookLegs = 31, lookFeet = 60})
monster:defense(20)
monster:armor(20)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(70)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = 50},
    {type = COMBAT_EARTHDAMAGE, percent = 40},
    {type = COMBAT_HOLYDAMAGE, percent = 30},
    {type = COMBAT_ENERGYDAMAGE, percent = -10},
    {type = COMBAT_DEATHDAMAGE, percent = -10},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FREEZING, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Cool down, you will?", yell = false},
    {text = "Freeze!", yell = false},
    {text = "Is this all you've got?", yell = false},
    {text = "Rise, my servants. Destroy the trespassers!", yell = false},
    {text = "And stay cool.", yell = false},
    {text = "Your cold dead body will be a marvelous ice statue.", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 92000, maxCount = 200},
    {id = 21400, chance = 92000},
    {id = 7290, chance = 57000},
    {id = 7449, chance = 42000},
    {id = 8472, chance = 42000, maxCount = 5},
    {id = 2396, chance = 42000},
    {id = 2168, chance = 42000},
    {id = 7443, chance = 35000},
    {id = 7892, chance = 35000},
    {id = 7440, chance = 35000},
    {id = 2152, chance = 35000},
    {id = 5909, chance = 35000, maxCount = 2},
    {id = 7439, chance = 28000},
    {id = 2158, chance = 28000},
    {id = 2663, chance = 28000},
    {id = 7888, chance = 21000},
    {id = 7590, chance = 21000, maxCount = 5},
    {id = 5912, chance = 14000},
    {id = 2445, chance = 14000},
    {id = 2201, chance = 14000},
    {id = 7896, chance = 14000},
    {id = 7897, chance = 14000},
    {id = 9971, chance = 14000},
    {id = 7591, chance = 14000, maxCount = 5},
    {id = 7459, chance = 14000},
    {id = 2436, chance = 14000},
    {id = 2195, chance = 7000},
    {id = 7902, chance = 7000},
    {id = 5911, chance = 7000},
    {id = 21699, chance = 7000},
    {id = 21700, chance = 3000},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-560
-- name=ice, interval=2000, chance=10, max=-100, length=8, spread=3, areaEffect=iceattack
-- name=ice, interval=2000, chance=20, range=7, max=-110, shootEffect=snowball
-- name=ice, interval=2000, chance=10, min=-300, max=-750, length=8, spread=3, areaEffect=icearea
-- name=outfit, interval=2000, chance=10, range=7, duration=4000, areaEffect=blueshimmer
-- name=speed, interval=2000, chance=15, range=7, duration=20000, speedchange=-330, areaEffect=icetornado
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=10000, chance=1, min=7500, max=7515, areaEffect=blueshimmer
-- name=healing, interval=3000, chance=15, min=200, max=500, areaEffect=blueshimmer
--]]

monster:register()
