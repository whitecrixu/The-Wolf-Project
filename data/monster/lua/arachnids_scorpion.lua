-- Scorpion
-- Auto-converted from XML

local monster = Game.createMonsterType("Scorpion")
if not monster then return end

monster:name("Scorpion")
monster:nameDescription("a scorpion")
monster:health(45)
monster:maxHealth(45)
monster:experience(45)
monster:speed(155)
monster:race(RACE_VENOM)
monster:manaCost(310)
monster:corpseId(5988)
monster:outfit({lookType = 43})
monster:defense(5)
monster:armor(5)
monster:runHealth(5)

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
    {type = COMBAT_ICEDAMAGE, percent = -10},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_POISON, immunity = true},
})

-- Loot
monster:loot({
    {id = 10568, chance = 4930},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=30, attack=25
--]]

monster:register()
