-- Orc Warlord
-- Auto-converted from XML

local monster = Game.createMonsterType("Orc Warlord")
if not monster then return end

monster:name("Orc Warlord")
monster:nameDescription("a orc warlord")
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
    {id = 2148, chance = 18000, maxCount = 45},
    {id = 2399, chance = 13920, maxCount = 18},
    {id = 2667, chance = 10800, maxCount = 2},
    {id = 2419, chance = 3450},
    {id = 2666, chance = 9000, maxCount = 2},
    {id = 2428, chance = 5400},
    {id = 2463, chance = 5210},
    {id = 2200, chance = 2190},
    {id = 2647, chance = 4280},
    {id = 3965, chance = 5260},
    {id = 2478, chance = 9000},
    {id = 2465, chance = 740},
    {id = 2490, chance = 1260},
    {id = 2377, chance = 1680},
    {id = 2434, chance = 320},
    {id = 2497, chance = 280},
    {id = 2165, chance = 90},
    {id = 7618, chance = 470},
    {id = 7395, chance = 50},
    {id = 2179, chance = 30},
    {id = 7891, chance = 280},
    {id = 12435, chance = 20620},
    {id = 11113, chance = 9640},
    {id = 12436, chance = 4610},
    {id = 12409, chance = 24350},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=90, attack=50
-- name=physical, interval=2000, chance=20, range=7, max=-200, shootEffect=throwingstar
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=invisible, interval=2000, chance=5, duration=3000, areaEffect=blueshimmer
--]]

monster:register()
