-- Seagull
-- Auto-converted from XML

local monster = Game.createMonsterType("Seagull")
if not monster then return end

monster:name("Seagull")
monster:nameDescription("a seagull")
monster:health(25)
monster:maxHealth(25)
monster:experience(0)
monster:speed(260)
monster:race(RACE_BLOOD)
monster:manaCost(250)
monster:corpseId(6076)
monster:outfit({lookType = 223})
monster:defense(5)
monster:armor(5)
monster:targetDistance(11)
monster:runHealth(25)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isSummonable(true)
monster:pushable(true)
monster:staticAttackChance(90)

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=10, attack=3
--]]

monster:register()
