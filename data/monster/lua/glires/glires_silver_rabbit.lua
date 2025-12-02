-- Silver Rabbit
-- Converted from XML

local monster = Game.createMonsterType("Silver Rabbit")
if not monster then return end

monster:name("Silver Rabbit")
monster:nameDescription("a silver rabbit")
monster:health(15)
monster:maxHealth(15)
monster:experience(0)
monster:speed(195)
monster:race(RACE_BLOOD)
monster:manaCost(220)
monster:corpseId(7338)
monster:outfit({lookType = 262, lookHead = 69, lookBody = 66, lookLegs = 69, lookFeet = 66})
monster:defense(5)
monster:armor(5)
monster:runHealth(1)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isSummonable(true)
monster:isConvinceable(true)
monster:staticAttackChance(90)

-- Loot
monster:loot({
    {id = 2666, chance = 86170, maxCount = 2},
    {id = 2684, chance = 11150},
    {id = 11209, chance = 28670}
})

-- Attacks (default melee)
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -5}
})

monster:register()
