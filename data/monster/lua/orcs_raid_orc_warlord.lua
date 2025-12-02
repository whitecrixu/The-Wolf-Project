-- Orc Warlord
-- Auto-converted from XML

local monster = Game.createMonsterType("Orc Warlord")
if not monster then return end

monster:name("Orc Warlord")
monster:nameDescription("an orc warlord")
monster:health(950)
monster:maxHealth(950)
monster:experience(670)
monster:speed(240)
monster:race(RACE_BLOOD)
monster:corpseId(6008)
monster:outfit({lookType = 2})
monster:defense(35)
monster:armor(35)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = 80},
    {type = COMBAT_ENERGYDAMAGE, percent = 20},
    {type = COMBAT_HOLYDAMAGE, percent = 10},
    {type = COMBAT_EARTHDAMAGE, percent = -10},
    {type = COMBAT_DEATHDAMAGE, percent = -5},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Ranat Ulderek!", yell = false},
    {text = "Orc buta bana!", yell = false},
    {text = "Ikem rambo zambo!", yell = false},
    {text = "Futchi maruk buta!", yell = false},
})

-- Loot
monster:loot({
    {id = 12409, chance = 25000},
    {id = 12435, chance = 20000},
    {id = 2148, chance = 18000, maxCount = 45},
    {id = 2399, chance = 14000, maxCount = 18},
    {id = 2667, chance = 10800, maxCount = 2},
    {id = 11113, chance = 9500},
    {id = 2428, chance = 5200},
    {id = 3965, chance = 5200},
    {id = 2463, chance = 5110},
    {id = 12436, chance = 4610},
    {id = 2647, chance = 4180},
    {id = 2419, chance = 3550},
    {id = 2200, chance = 2190},
    {id = 2377, chance = 1800},
    {id = 2490, chance = 1400},
    {id = 2465, chance = 670},
    {id = 7618, chance = 420},
    {id = 2497, chance = 340},
    {id = 2434, chance = 290},
    {id = 7891, chance = 250},
    {id = 7395, chance = 80},
    {id = 2165, chance = 80},
    {id = 2537, chance = 5000},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-250
-- name=physical, interval=2000, chance=20, range=7, max=-200, shootEffect=throwingstar
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=invisible, interval=2000, chance=5, duration=3000, areaEffect=blueshimmer
--]]

monster:register()
