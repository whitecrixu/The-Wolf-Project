-- Bug
-- Auto-converted from XML

local monster = Game.createMonsterType("Bug")
if not monster then return end

monster:name("Bug")
monster:nameDescription("a bug")
monster:health(29)
monster:maxHealth(29)
monster:experience(18)
monster:speed(160)
monster:race(RACE_VENOM)
monster:manaCost(250)
monster:corpseId(5990)
monster:outfit({lookType = 45})
monster:defense(5)
monster:armor(5)

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

-- Loot
monster:loot({
    {id = 2148, chance = 51170, maxCount = 6},
    {id = 2679, chance = 2590, maxCount = 3},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=20, attack=15
--]]

monster:register()
