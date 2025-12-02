-- Rocko
-- Auto-converted from XML

local monster = Game.createMonsterType("Rocko")
if not monster then return end

monster:name("Rocko")
monster:nameDescription("Rocko")
monster:health(10000)
monster:maxHealth(10000)
monster:experience(3400)
monster:speed(180)
monster:race(RACE_BLOOD)
monster:manaCost(590)
monster:corpseId(6005)
monster:outfit({lookType = 67})
monster:defense(18)
monster:armor(10)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_HOLYDAMAGE, percent = -10},
    {type = COMBAT_PHYSICALDAMAGE, percent = 15},
    {type = COMBAT_FIREDAMAGE, percent = 30},
    {type = COMBAT_ENERGYDAMAGE, percent = 25},
    {type = COMBAT_ICEDAMAGE, percent = 20},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_CURSED, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=28, attack=100
-- name=poison, interval=2000, chance=20, max=-125, length=8, areaEffect=poison
-- name=physical, interval=2000, chance=20, max=-411, length=8, areaEffect=groundshaker
--]]

monster:register()
