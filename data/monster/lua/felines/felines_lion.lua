-- Lion
-- Converted from XML

local monster = Game.createMonsterType("Lion")
if not monster then return end

monster:name("Lion")
monster:nameDescription("a lion")
monster:health(80)
monster:maxHealth(80)
monster:experience(30)
monster:speed(190)
monster:race(RACE_BLOOD)
monster:manaCost(320)
monster:corpseId(5986)
monster:outfit({lookType = 41})
monster:defense(10)
monster:armor(10)
monster:runHealth(8)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isSummonable(true)
monster:isConvinceable(true)
monster:isIllusionable(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_EARTHDAMAGE, percent = 20},
    {type = COMBAT_HOLYDAMAGE, percent = 20},
    {type = COMBAT_ICEDAMAGE, percent = -15},
    {type = COMBAT_DEATHDAMAGE, percent = -8}
})

-- Voices
monster:voices({
    {text = "Groarrr!", yell = false}
})

-- Loot
monster:loot({
    {id = 2671, chance = 18430, maxCount = 2},
    {id = 2666, chance = 45000, maxCount = 4},
    {id = 10608, chance = 1400}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -50}
})

monster:register()
