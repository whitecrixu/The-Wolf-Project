-- Damaged Crystal Golem
-- Auto-converted from XML

local monster = Game.createMonsterType("Damaged Crystal Golem")
if not monster then return end

monster:name("Damaged Crystal Golem")
monster:nameDescription("a damaged crystal golem")
monster:health(500)
monster:maxHealth(500)
monster:experience(0)
monster:speed(180)
monster:race(RACE_ENERGY)
monster:corpseId(18466)
monster:outfit({lookType = 508})
monster:defense(0)
monster:armor(0)
monster:runHealth(500)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

monster:register()
