-- Adept of the Cult
-- Auto-converted from XML

local monster = Game.createMonsterType("Adept of the Cult")
if not monster then return end

monster:name("Adept of the Cult")
monster:nameDescription("an adept of the cult")
monster:health(430)
monster:maxHealth(430)
monster:experience(400)
monster:speed(215)
monster:race(RACE_BLOOD)
monster:corpseId(20311)
monster:outfit({lookType = 194, lookHead = 114, lookBody = 94, lookLegs = 94, lookFeet = 57})
monster:defense(20)
monster:armor(20)
monster:targetDistance(4)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_HOLYDAMAGE, percent = 30},
    {type = COMBAT_EARTHDAMAGE, percent = 40},
    {type = COMBAT_ICEDAMAGE, percent = 20},
    {type = COMBAT_ENERGYDAMAGE, percent = -5},
    {type = COMBAT_DEATHDAMAGE, percent = -5},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Feel the power of the cult!", yell = false},
    {text = "Praise the voodoo!", yell = false},
    {text = "Power to the cult!", yell = false},
})

-- Summons
monster:summons({
    {name = "Ghoul", chance = 10, interval = 2000, max = 1},
})

-- Loot
monster:loot({
    {id = 2148, chance = 65520, maxCount = 60},
    {id = 10556, chance = 10080},
    {id = 12448, chance = 10000},
    {id = 5810, chance = 1730},
    {id = 2170, chance = 1020},
    {id = 2423, chance = 1260},
    {id = 1962, chance = 940},
    {id = 6089, chance = 700},
    {id = 7426, chance = 680},
    {id = 2169, chance = 420},
    {id = 2147, chance = 320},
    {id = 2183, chance = 220},
    {id = 12608, chance = 120},
    {id = 7424, chance = 120},
    {id = 2655, chance = 80},
    {id = 12411, chance = 90},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-90
-- name=lifedrain, interval=2000, chance=20, range=7, min=-70, max=-150, target=1, shootEffect=poison, areaEffect=poison
-- name=drunk, interval=2000, chance=10, range=7, radius=1, target=1, duration=4000, shootEffect=holy, areaEffect=holydamage
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=3000, chance=20, min=45, max=60, areaEffect=blueshimmer
-- name=invisible, interval=2000, chance=10, duration=3000, areaEffect=yellowbubble
--]]

monster:register()
