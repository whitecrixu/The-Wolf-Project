-- Adventurer
-- Converted from XML

local monster = Game.createMonsterType("Adventurer")
if not monster then return end

monster:name("Adventurer")
monster:nameDescription("a adventurer")
monster:health(65)
monster:maxHealth(65)
monster:experience(0)
monster:speed(170)
monster:race(RACE_BLOOD)
monster:corpseId(20315)
monster:outfit({lookType = 129, lookHead = 92, lookBody = 15, lookLegs = 92, lookFeet = 82})
monster:defense(0)
monster:armor(0)
monster:runHealth(6)

-- Flags
monster:attackable(true)
monster:hostile(false)
monster:isConvinceable(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Attacks (default melee)
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -13}
})

monster:register()
