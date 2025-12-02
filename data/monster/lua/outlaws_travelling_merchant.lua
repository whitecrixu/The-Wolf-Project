-- Travelling Merchant
-- Auto-converted from XML

local monster = Game.createMonsterType("Travelling Merchant")
if not monster then return end

monster:name("Travelling Merchant")
monster:nameDescription("a travelling merchant")
monster:health(100)
monster:maxHealth(100)
monster:experience(65)
monster:speed(170)
monster:race(RACE_BLOOD)
monster:corpseId(13176)
monster:outfit({lookType = 132, lookHead = 110, lookBody = 90, lookLegs = 128, lookFeet = 95, lookAddons = 1})
monster:defense(0)
monster:armor(0)
monster:targetDistance(4)
monster:runHealth(100)

-- Flags
monster:attackable(true)
monster:hostile(false)
monster:pushable(true)
monster:staticAttackChance(90)

-- Voices
monster:voices({
    {text = "It's quite dark in the forest, isn't it?", yell = false},
})

monster:register()
