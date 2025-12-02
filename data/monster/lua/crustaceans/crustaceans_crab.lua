-- Crab
-- Auto-converted from XML

local monster = Game.createMonsterType("Crab")
if not monster then return end

monster:name("Crab")
monster:nameDescription("a crab")
monster:health(55)
monster:maxHealth(55)
monster:experience(30)
monster:speed(140)
monster:race(RACE_UNDEAD)
monster:manaCost(305)
monster:corpseId(6039)
monster:outfit({lookType = 112})
monster:defense(10)
monster:armor(10)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isSummonable(true)
monster:isConvinceable(true)
monster:isIllusionable(true)
monster:pushable(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ICEDAMAGE, percent = 1},
    {type = COMBAT_FIREDAMAGE, percent = -10},
    {type = COMBAT_ENERGYDAMAGE, percent = -10},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_DROWN, immunity = true},
})

-- Loot
monster:loot({
    {id = 2148, chance = 80000, maxCount = 10},
    {id = 11189, chance = 20000},
    {id = 2667, chance = 20000},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=10, attack=20
--]]

monster:register()
