-- Poison Spider
-- Auto-converted from XML

local monster = Game.createMonsterType("Poison Spider")
if not monster then return end

monster:name("Poison Spider")
monster:nameDescription("a poison spider")
monster:health(26)
monster:maxHealth(26)
monster:experience(22)
monster:speed(160)
monster:race(RACE_VENOM)
monster:manaCost(270)
monster:corpseId(5974)
monster:outfit({lookType = 36})
monster:defense(5)
monster:armor(5)
monster:runHealth(6)

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
    {type = COMBAT_FIREDAMAGE, percent = -10},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_POISON, immunity = true},
})

-- Loot
monster:loot({
    {id = 2148, chance = 75000, maxCount = 4},
    {id = 12441, chance = 1140},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-20
--]]

monster:register()
