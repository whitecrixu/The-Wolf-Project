-- Skunk
-- Auto-converted from XML

local monster = Game.createMonsterType("Skunk")
if not monster then return end

monster:name("Skunk")
monster:nameDescription("a skunk")
monster:health(20)
monster:maxHealth(20)
monster:experience(3)
monster:speed(120)
monster:race(RACE_BLOOD)
monster:manaCost(200)
monster:corpseId(6035)
monster:outfit({lookType = 106})
monster:defense(5)
monster:armor(5)
monster:runHealth(8)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isSummonable(true)
monster:isConvinceable(true)
monster:isIllusionable(true)
monster:pushable(true)
monster:staticAttackChance(90)

-- Loot
monster:loot({
    {id = 9114, chance = 4910},
    {id = 11191, chance = 940},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-5
-- name=poison, interval=2000, chance=10, range=1, max=-3
--]]

monster:register()
