-- Black Sheep
-- Auto-converted from XML

local monster = Game.createMonsterType("Black Sheep")
if not monster then return end

monster:name("Black Sheep")
monster:nameDescription("a black sheep")
monster:health(20)
monster:maxHealth(20)
monster:experience(0)
monster:speed(130)
monster:race(RACE_BLOOD)
monster:manaCost(250)
monster:corpseId(5994)
monster:outfit({lookType = 13})
monster:defense(5)
monster:armor(5)
monster:runHealth(20)

-- Flags
monster:attackable(true)
monster:hostile(false)
monster:isSummonable(true)
monster:isConvinceable(true)
monster:isIllusionable(true)
monster:pushable(true)
monster:staticAttackChance(90)

-- Voices
monster:voices({
    {text = "Maeh", yell = false},
})

-- Loot
monster:loot({
    {id = 2666, chance = 70860, maxCount = 5},
    {id = 12404, chance = 1000},
})

monster:register()
