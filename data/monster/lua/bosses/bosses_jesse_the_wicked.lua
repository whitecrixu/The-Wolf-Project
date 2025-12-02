-- Jesse The Wicked
-- Converted from XML

local monster = Game.createMonsterType("Jesse The Wicked")
if not monster then return end

monster:name("Jesse The Wicked")
monster:nameDescription("Jesse The Wicked")
monster:health(280)
monster:maxHealth(280)
monster:experience(180)
monster:speed(220)
monster:race(RACE_BLOOD)
monster:corpseId(20434)
monster:outfit({lookType = 134, lookHead = 76, lookBody = 76, lookLegs = 76, lookFeet = 115, lookAddons = 3})
monster:defense(25)
monster:armor(25)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Loot
monster:loot({
    {id = 2152, chance = 100000, maxCount = 85},
    {id = 14903, chance = 100000}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -100}
})

monster:register()
