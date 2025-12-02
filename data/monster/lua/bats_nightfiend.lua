-- Nightfiend
-- Auto-converted from XML

local monster = Game.createMonsterType("Nightfiend")
if not monster then return end

monster:name("Nightfiend")
monster:nameDescription("a nightfiend")
monster:health(2700)
monster:maxHealth(2700)
monster:experience(2100)
monster:speed(210)
monster:race(RACE_BLOOD)
monster:corpseId(2669)
monster:outfit({lookType = 568})
monster:defense(11)
monster:armor(11)
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
    {type = COMBAT_PHYSICALDAMAGE, percent = 5},
    {type = COMBAT_ENERGYDAMAGE, percent = 5},
    {type = COMBAT_ICEDAMAGE, percent = 5},
    {type = COMBAT_FIREDAMAGE, percent = -5},
    {type = COMBAT_HOLYDAMAGE, percent = -5},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_CURSED, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=20, attack=30
-- name=physical, interval=1000, chance=10, range=7, min=-5, max=-40, shootEffect=throwingknife
--]]

monster:register()
