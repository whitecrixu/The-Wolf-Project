-- Juggernaut
-- Auto-converted from XML

local monster = Game.createMonsterType("Juggernaut")
if not monster then return end

monster:name("Juggernaut")
monster:nameDescription("a juggernaut")
monster:health(20000)
monster:maxHealth(20000)
monster:experience(14000)
monster:speed(290)
monster:race(RACE_BLOOD)
monster:corpseId(6336)
monster:outfit({lookType = 244})
monster:defense(60)
monster:armor(60)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(60)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 40},
    {type = COMBAT_FIREDAMAGE, percent = 30},
    {type = COMBAT_ICEDAMAGE, percent = 10},
    {type = COMBAT_EARTHDAMAGE, percent = 20},
    {type = COMBAT_ENERGYDAMAGE, percent = -10},
    {type = COMBAT_HOLYDAMAGE, percent = -5},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "RAAARRR!", yell = false},
    {text = "GRRRRRR!", yell = false},
    {text = "WAHHHH!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 100},
    {id = 2148, chance = 100000, maxCount = 100},
    {id = 2148, chance = 100000, maxCount = 100},
    {id = 2148, chance = 100000, maxCount = 100},
    {id = 2152, chance = 100000, maxCount = 15},
    {id = 2671, chance = 60000, maxCount = 8},
    {id = 6500, chance = 45333},
    {id = 5944, chance = 33333},
    {id = 6558, chance = 25000, maxCount = 4},
    {id = 7591, chance = 32000},
    {id = 2147, chance = 20000, maxCount = 4},
    {id = 7368, chance = 25000, maxCount = 10},
    {id = 7590, chance = 35000},
    {id = 2149, chance = 20000, maxCount = 5},
    {id = 9810, chance = 3000},
    {id = 7365, chance = 11111, maxCount = 15},
    {id = 2156, chance = 13850},
    {id = 9971, chance = 7692, maxCount = 2},
    {id = 7452, chance = 7761},
    {id = 2153, chance = 830},
    {id = 2136, chance = 550},
    {id = 2466, chance = 550},
    {id = 2155, chance = 869},
    {id = 2578, chance = 280},
    {id = 2476, chance = 4990},
    {id = 2514, chance = 800},
    {id = 2434, chance = 9000},
    {id = 7413, chance = 4430},
    {id = 2470, chance = 500},
    {id = 2228, chance = 600},
    {id = 8889, chance = 400},
    {id = 2452, chance = 400},
    {id = 2454, chance = 400},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=200, attack=140
-- name=physical, interval=2000, chance=15, range=7, max=-780, shootEffect=largerock
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=speed, interval=2000, chance=15, duration=5000, speedchange=520, areaEffect=redshimmer
-- name=healing, interval=2000, chance=15, min=400, max=900, areaEffect=blueshimmer
--]]

monster:register()
