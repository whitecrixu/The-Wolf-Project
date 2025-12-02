-- Chicken
-- Auto-converted from XML

local monster = Game.createMonsterType("Chicken")
if not monster then return end

monster:name("Chicken")
monster:nameDescription("a chicken")
monster:health(15)
monster:maxHealth(15)
monster:experience(0)
monster:speed(160)
monster:race(RACE_BLOOD)
monster:manaCost(220)
monster:corpseId(6042)
monster:outfit({lookType = 111})
monster:defense(5)
monster:armor(5)
monster:runHealth(15)

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
    {text = "Gokgoooook", yell = false},
    {text = "Cluck Cluck", yell = false},
})

-- Loot
monster:loot({
    {id = 3976, chance = 10000, maxCount = 3},
    {id = 5890, chance = 20000},
    {id = 2695, chance = 950},
    {id = 2666, chance = 2120, maxCount = 2},
})

monster:register()
