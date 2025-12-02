-- Zanakeph
-- Auto-converted from XML

local monster = Game.createMonsterType("Zanakeph")
if not monster then return end

monster:name("Zanakeph")
monster:nameDescription("Zanakeph")
monster:health(13000)
monster:maxHealth(13000)
monster:experience(9900)
monster:speed(330)
monster:race(RACE_UNDEAD)
monster:corpseId(6306)
monster:outfit({lookType = 231})
monster:defense(40)
monster:armor(40)
monster:runHealth(700)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 10},
    {type = COMBAT_ICEDAMAGE, percent = 50},
    {type = COMBAT_HOLYDAMAGE, percent = -25},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_CURSED, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_LIFEDRAIN, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "FEEEED MY ETERNAL HUNGER!", yell = true},
    {text = "I SENSE LIFE", yell = true},
})

-- Loot
monster:loot({
    {id = 6300, chance = 100000},
    {id = 7430, chance = 100000},
    {id = 2148, chance = 100000, maxCount = 100},
    {id = 2033, chance = 100000},
    {id = 2152, chance = 100000, maxCount = 10},
    {id = 11233, chance = 100000, maxCount = 3},
    {id = 9971, chance = 78000},
    {id = 6500, chance = 56000},
    {id = 2476, chance = 47270},
    {id = 2491, chance = 40000},
    {id = 8472, chance = 37000, maxCount = 3},
    {id = 5925, chance = 37000, maxCount = 5},
    {id = 11368, chance = 37000},
    {id = 7591, chance = 35000, maxCount = 4},
    {id = 9810, chance = 35000},
    {id = 2149, chance = 33000, maxCount = 5},
    {id = 2146, chance = 33000, maxCount = 5},
    {id = 7590, chance = 25000, maxCount = 3},
    {id = 2466, chance = 13500},
    {id = 13291, chance = 6780},
    {id = 5741, chance = 5000},
    {id = 8885, chance = 3390},
    {id = 2498, chance = 1690},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=90, attack=96
-- name=physical, interval=2000, chance=5, range=7, min=-300, max=-400, radius=4, target=1, areaEffect=redspark
-- name=death, interval=2000, chance=10, range=7, min=-125, max=-600, shootEffect=suddendeath, areaEffect=smallclouds
-- name=earth, interval=2000, chance=5, range=7, min=-100, max=-390, radius=4, target=1, shootEffect=poison, areaEffect=poison
-- name=earth, interval=2000, chance=15, range=7, max=-180, target=1, shootEffect=poison, areaEffect=poison
-- name=earth, interval=2000, chance=10, min=-150, max=-690, length=8, spread=3, areaEffect=poison
-- name=lifedrain, interval=2000, chance=10, min=-300, max=-700, length=8, spread=3, areaEffect=redshimmer
-- name=lifedrain, interval=2000, chance=10, min=-100, max=-200, radius=3, areaEffect=redshimmer
-- name=undead dragon curse, interval=2000, chance=10
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=15, min=200, max=250, areaEffect=blueshimmer
--]]

monster:register()
