-- Cliff Strider
-- Auto-converted from XML

local monster = Game.createMonsterType("Cliff Strider")
if not monster then return end

monster:name("Cliff Strider")
monster:nameDescription("a cliff strider")
monster:health(9400)
monster:maxHealth(9400)
monster:experience(5700)
monster:speed(260)
monster:race(RACE_UNDEAD)
monster:corpseId(17420)
monster:outfit({lookType = 497})
monster:defense(55)
monster:armor(55)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:staticAttackChance(80)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = 1},
    {type = COMBAT_PHYSICALDAMAGE, percent = 1},
    {type = COMBAT_DEATHDAMAGE, percent = 40},
    {type = COMBAT_ICEDAMAGE, percent = 20},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_ENERGY, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Knorrrr", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 100},
    {id = 2148, chance = 100000, maxCount = 95},
    {id = 2152, chance = 100000, maxCount = 10},
    {id = 7590, chance = 30950, maxCount = 4},
    {id = 8473, chance = 25260, maxCount = 2},
    {id = 5944, chance = 17080},
    {id = 18429, chance = 18000, maxCount = 2},
    {id = 18428, chance = 15630},
    {id = 18427, chance = 15110},
    {id = 5880, chance = 14490},
    {id = 11227, chance = 11280},
    {id = 18435, chance = 9090, maxCount = 8},
    {id = 2144, chance = 9090},
    {id = 18418, chance = 7970, maxCount = 2},
    {id = 2143, chance = 9630, maxCount = 3},
    {id = 18419, chance = 8070},
    {id = 18413, chance = 6520},
    {id = 2156, chance = 6110},
    {id = 9942, chance = 2690},
    {id = 18390, chance = 2000},
    {id = 5904, chance = 1450},
    {id = 7437, chance = 1350},
    {id = 18412, chance = 1240},
    {id = 7452, chance = 1040},
    {id = 18453, chance = 830},
    {id = 2393, chance = 620},
    {id = 2497, chance = 410},
    {id = 9980, chance = 720},
    {id = 18450, chance = 620},
    {id = 2477, chance = 830},
    {id = 2158, chance = 830},
    {id = 2487, chance = 310},
    {id = 2645, chance = 100},
    {id = 2444, chance = 70},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=95, attack=95
-- name=physical, interval=2000, chance=20, max=-800, radius=4, target=1, shootEffect=largerock, areaEffect=stones
-- name=cliff strider skill reducer, interval=2000, chance=10
-- name=cliff strider electrify, interval=2000, chance=15, range=1
-- name=physical, interval=2000, chance=10, max=-1000, length=6, areaEffect=groundshaker
-- name=manadrain, interval=2000, chance=15, min=-100, max=-300, radius=4, areaEffect=yellowenergy
--]]

monster:register()
