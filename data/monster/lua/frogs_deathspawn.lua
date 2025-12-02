-- Deathspawn
-- Auto-converted from XML

local monster = Game.createMonsterType("Deathspawn")
if not monster then return end

monster:name("Deathspawn")
monster:nameDescription("a deathspawn")
monster:health(225)
monster:maxHealth(225)
monster:experience(20)
monster:speed(230)
monster:race(RACE_BLOOD)
monster:manaCost(305)
monster:corpseId(2220)
monster:outfit({lookType = 226, lookHead = 114, lookBody = 98, lookLegs = 97, lookFeet = 114})
monster:defense(5)
monster:armor(1)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_HOLYDAMAGE, percent = 10},
    {type = COMBAT_FIREDAMAGE, percent = -15},
    {type = COMBAT_ENERGYDAMAGE, percent = -15},
    {type = COMBAT_ICEDAMAGE, percent = -15},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_CURSED, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
})

-- Voices
monster:voices({
    {text = "Ribbit!", yell = false},
    {text = "Ribbit! Ribbit!", yell = false},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=10, attack=40
-- name=fire, interval=1000, chance=10, min=-400, max=-700, length=7, areaEffect=explosion
-- name=energy, interval=1000, chance=11, min=-250, max=-450, length=7, areaEffect=purpleenergy
--]]

monster:register()
