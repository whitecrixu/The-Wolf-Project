-- Quara Pincher Scout
-- Auto-converted from XML

local monster = Game.createMonsterType("Quara Pincher Scout")
if not monster then return end

monster:name("Quara Pincher Scout")
monster:nameDescription("a quara pincher scout")
monster:health(775)
monster:maxHealth(775)
monster:experience(600)
monster:speed(200)
monster:race(RACE_BLOOD)
monster:corpseId(6063)
monster:outfit({lookType = 77})
monster:defense(45)
monster:armor(45)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = -10},
    {type = COMBAT_PHYSICALDAMAGE, percent = 10},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FREEZING, immunity = true},
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_LIFEDRAIN, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
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
    {id = 2148, chance = 49000, maxCount = 43},
    {id = 12446, chance = 9940},
    {id = 2463, chance = 4170},
    {id = 2381, chance = 1840},
    {id = 2147, chance = 3440},
    {id = 5895, chance = 1000},
    {id = 2177, chance = 1000},
    {id = 13305, chance = 10},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=70, attack=60
-- name=speed, interval=2000, chance=20, range=1, duration=3000, speedchange=-600, areaEffect=redshimmer
--]]

monster:register()
