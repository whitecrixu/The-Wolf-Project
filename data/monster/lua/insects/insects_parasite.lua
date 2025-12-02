-- Parasite
-- Auto-converted from XML

local monster = Game.createMonsterType("Parasite")
if not monster then return end

monster:name("Parasite")
monster:nameDescription("a parasite")
monster:health(550)
monster:maxHealth(550)
monster:experience(0)
monster:speed(175)
monster:race(RACE_VENOM)
monster:manaCost(355)
monster:corpseId(6023)
monster:outfit({lookType = 82})
monster:defense(15)
monster:armor(15)

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
    {type = COMBAT_ENERGYDAMAGE, percent = 20},
    {type = COMBAT_FIREDAMAGE, percent = -10},
    {type = COMBAT_ICEDAMAGE, percent = -5},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_FIRE, immunity = true},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=40, attack=40
--]]

monster:register()
