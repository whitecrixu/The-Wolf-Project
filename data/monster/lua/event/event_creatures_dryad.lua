-- Dryad
-- Auto-converted from XML

local monster = Game.createMonsterType("Dryad")
if not monster then return end

monster:name("Dryad")
monster:nameDescription("a dryad")
monster:health(310)
monster:maxHealth(310)
monster:experience(190)
monster:speed(210)
monster:race(RACE_BLOOD)
monster:corpseId(20387)
monster:outfit({lookType = 137, lookHead = 80, lookBody = 101, lookLegs = 6, lookFeet = 100, lookAddons = 3})
monster:defense(50)
monster:armor(50)
monster:runHealth(30)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 30},
    {type = COMBAT_ICEDAMAGE, percent = 1},
    {type = COMBAT_PHYSICALDAMAGE, percent = -10},
    {type = COMBAT_FIREDAMAGE, percent = -20},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
})

-- Voices
monster:voices({
    {text = "Feel the wrath of mother World!", yell = false},
    {text = "Defiler of nature!", yell = false},
})

-- Loot
monster:loot({
    {id = 2787, chance = 55000, maxCount = 2},
    {id = 2148, chance = 40000, maxCount = 30},
    {id = 7732, chance = 11000, maxCount = 3},
    {id = 9928, chance = 1280},
    {id = 9931, chance = 1200},
    {id = 9929, chance = 1100},
    {id = 9927, chance = 970},
    {id = 2790, chance = 780, maxCount = 2},
    {id = 13298, chance = 210},
    {id = 2150, chance = 130},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-90
-- name=earth, interval=2500, chance=9, min=-20, max=-30, radius=4, areaEffect=bigplants
-- name=speed, interval=1000, chance=6, range=7, radius=7, duration=20000, speedchange=-200, areaEffect=poff
-- name=drunk, interval=1000, chance=12, range=7, duration=20000, areaEffect=hearts
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=15, min=15, max=60, areaEffect=blueshimmer
-- name=invisible, interval=2000, chance=10, duration=5000, areaEffect=blueshimmer
--]]

monster:register()
