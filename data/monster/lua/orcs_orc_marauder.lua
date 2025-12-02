-- Orc Marauder
-- Auto-converted from XML

local monster = Game.createMonsterType("Orc Marauder")
if not monster then return end

monster:name("Orc Marauder")
monster:nameDescription("a orc marauder")
monster:health(235)
monster:maxHealth(235)
monster:experience(205)
monster:speed(210)
monster:race(RACE_BLOOD)
monster:corpseId(11251)
monster:outfit({lookType = 342})
monster:defense(25)
monster:armor(25)
monster:targetDistance(4)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_HOLYDAMAGE, percent = 5},
    {type = COMBAT_EARTHDAMAGE, percent = -5},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Grrrrrr", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 55000, maxCount = 90},
    {id = 2666, chance = 24600},
    {id = 2456, chance = 5210},
    {id = 2425, chance = 1110},
    {id = 11324, chance = 10090},
    {id = 11113, chance = 3890},
    {id = 2428, chance = 1320},
    {id = 12435, chance = 3800},
    {id = 8857, chance = 70},
    {id = 12407, chance = 4830},
    {id = 2455, chance = 440},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=40, attack=40
-- name=physical, interval=2000, chance=50, range=7, max=-100, shootEffect=onyxarrow
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=speed, interval=2000, chance=15, duration=5000, speedchange=350, areaEffect=redshimmer
--]]

monster:register()
