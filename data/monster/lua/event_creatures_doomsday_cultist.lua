-- Doomsday Cultist
-- Auto-converted from XML

local monster = Game.createMonsterType("Doomsday Cultist")
if not monster then return end

monster:name("Doomsday Cultist")
monster:nameDescription("a doomsday cultist")
monster:health(125)
monster:maxHealth(125)
monster:experience(100)
monster:speed(215)
monster:race(RACE_BLOOD)
monster:corpseId(20383)
monster:outfit({lookType = 194, lookHead = 95, lookBody = 95, lookLegs = 95, lookFeet = 95})
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
    {type = COMBAT_FIREDAMAGE, percent = 20},
    {type = COMBAT_ENERGYDAMAGE, percent = -5},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_CURSED, immunity = true},
})

-- Voices
monster:voices({
    {text = "Fear the night without an end!", yell = false},
    {text = "An age of darkness is at hand!", yell = false},
})

-- Loot
monster:loot({
    {id = 10531, chance = 1000},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-90
-- name=lifedrain, interval=2000, chance=20, range=7, min=-50, max=-100, target=1, shootEffect=poison, areaEffect=poison
--]]

monster:register()
