-- Angry Adventurer
-- Auto-converted from XML

local monster = Game.createMonsterType("Angry Adventurer")
if not monster then return end

monster:name("Angry Adventurer")
monster:nameDescription("a angry adventurer")
monster:health(65)
monster:maxHealth(65)
monster:experience(50)
monster:speed(195)
monster:race(RACE_BLOOD)
monster:corpseId(20315)
monster:outfit({lookType = 129, lookHead = 92, lookBody = 15, lookLegs = 92, lookFeet = 82})
monster:defense(15)
monster:armor(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isConvinceable(true)
monster:isIllusionable(true)
monster:pushable(false)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=15, attack=16
--]]

monster:register()
