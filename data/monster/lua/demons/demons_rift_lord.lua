-- Rift Lord
-- Auto-converted from XML

local monster = Game.createMonsterType("Rift Lord")
if not monster then return end

monster:name("Rift Lord")
monster:nameDescription("a rift lord")
monster:health(5)
monster:maxHealth(5)
monster:experience(0)
monster:speed(200)
monster:race(RACE_FIRE)
monster:outfit({lookType = 12, lookHead = 9, lookBody = 19, lookLegs = 9, lookFeet = 85})
monster:defense(0)
monster:armor(0)

-- Flags
monster:attackable(false)
monster:hostile(false)
monster:pushable(false)
monster:canPushItems(true)
monster:staticAttackChance(98)

monster:register()
