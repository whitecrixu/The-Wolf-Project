-- Ron the Ripper
-- Converted from XML

local monster = Game.createMonsterType("Ron the Ripper")
if not monster then return end

monster:name("Ron the Ripper")
monster:nameDescription("Ron the Ripper")
monster:health(1500)
monster:maxHealth(1500)
monster:experience(500)
monster:speed(240)
monster:race(RACE_BLOOD)
monster:corpseId(20502)
monster:outfit({lookType = 151, lookHead = 95, lookBody = 94, lookLegs = 117, lookFeet = 97, lookAddons = 1})
monster:defense(50)
monster:armor(35)
monster:runHealth(150)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Loot
monster:loot({
    {id = 6101, chance = 100000},
    {id = 2148, chance = 100000, maxCount = 50},
    {id = 2476, chance = 1200},
    {id = 2387, chance = 1500},
    {id = 2463, chance = 4000},
    {id = 2379, chance = 8500},
    {id = 2320, chance = 100000, maxCount = 2}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = -200, maxDamage = -250}
})

monster:register()
