-- Smuggler
-- Converted from XML

local monster = Game.createMonsterType("Smuggler")
if not monster then return end

monster:name("Smuggler")
monster:nameDescription("a smuggler")
monster:health(130)
monster:maxHealth(130)
monster:experience(48)
monster:speed(170)
monster:race(RACE_BLOOD)
monster:manaCost(390)
monster:corpseId(20507)
monster:outfit({lookType = 134, lookHead = 95, lookLegs = 113, lookFeet = 115})
monster:defense(15)
monster:armor(15)
monster:runHealth(13)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isSummonable(true)
monster:isConvinceable(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = -5},
    {type = COMBAT_DEATHDAMAGE, percent = -5}
})

-- Voices
monster:voices({
    {text = "I will silence you forever!", yell = false},
    {text = "You saw something you shouldn't!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 80000, maxCount = 10},
    {id = 2050, chance = 30200, maxCount = 2},
    {id = 8840, chance = 5000, maxCount = 5},
    {id = 2649, chance = 14840},
    {id = 2403, chance = 9920},
    {id = 2671, chance = 10200},
    {id = 2406, chance = 10000},
    {id = 2461, chance = 10050},
    {id = 2404, chance = 4400},
    {id = 2376, chance = 5000},
    {id = 7397, chance = 110}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -60}
})

monster:register()
