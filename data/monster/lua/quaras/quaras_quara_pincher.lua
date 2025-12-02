-- Quara Pincher
-- Auto-converted from XML

local monster = Game.createMonsterType("Quara Pincher")
if not monster then return end

monster:name("Quara Pincher")
monster:nameDescription("a quara pincher")
monster:health(1800)
monster:maxHealth(1800)
monster:experience(1200)
monster:speed(210)
monster:race(RACE_BLOOD)
monster:corpseId(6063)
monster:outfit({lookType = 77})
monster:defense(50)
monster:armor(50)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_EARTHDAMAGE, percent = -10},
    {type = COMBAT_ENERGYDAMAGE, percent = -25},
    {type = COMBAT_PHYSICALDAMAGE, percent = 10},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_LIFEDRAIN, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_DROWN, immunity = true},
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_FREEZING, immunity = true},
})

-- Voices
monster:voices({
    {text = "Clank clank!", yell = false},
    {text = "Clap!", yell = false},
    {text = "Crrrk! Crrrk!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 100},
    {id = 2148, chance = 50000, maxCount = 49},
    {id = 2152, chance = 40000},
    {id = 12446, chance = 14285},
    {id = 2147, chance = 7761, maxCount = 2},
    {id = 2381, chance = 6861},
    {id = 2670, chance = 5245, maxCount = 5},
    {id = 5895, chance = 1600},
    {id = 2475, chance = 1350},
    {id = 7591, chance = 10630},
    {id = 2487, chance = 350},
    {id = 7897, chance = 140},
    {id = 13305, chance = 80},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=85, attack=72
-- name=speed, interval=2000, chance=20, range=1, duration=3000, speedchange=-600, areaEffect=redshimmer
--]]

monster:register()
