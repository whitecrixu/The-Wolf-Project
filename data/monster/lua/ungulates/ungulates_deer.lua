-- Deer
-- Auto-converted from XML

local monster = Game.createMonsterType("Deer")
if not monster then return end

monster:name("Deer")
monster:nameDescription("a deer")
monster:health(25)
monster:maxHealth(25)
monster:experience(0)
monster:speed(150)
monster:race(RACE_BLOOD)
monster:manaCost(260)
monster:corpseId(5970)
monster:outfit({lookType = 31})
monster:defense(5)
monster:armor(5)
monster:runHealth(25)

-- Flags
monster:attackable(true)
monster:hostile(false)
monster:isSummonable(true)
monster:isConvinceable(true)
monster:isIllusionable(true)
monster:pushable(true)
monster:staticAttackChance(90)

-- Loot
monster:loot({
    {id = 2666, chance = 80000, maxCount = 4},
    {id = 2671, chance = 50000, maxCount = 2},
    {id = 11214, chance = 870},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-1
--]]

monster:register()
