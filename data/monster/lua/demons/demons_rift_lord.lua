-- Rift Lord
-- Converted from XML

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
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Attacks (default melee)
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -5}
})

monster:register()
