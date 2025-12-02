-- Forest Fury
-- Converted from XML

local monster = Game.createMonsterType("Forest Fury")
if not monster then return end

monster:name("Forest Fury")
monster:nameDescription("a forest fury")
monster:health(480)
monster:maxHealth(480)
monster:experience(235)
monster:speed(210)
monster:race(RACE_BLOOD)
monster:corpseId(21359)
monster:outfit({lookType = 569})
monster:defense(20)
monster:armor(20)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_HOLYDAMAGE, percent = 10},
    {type = COMBAT_FIREDAMAGE, percent = -5}
})

-- Voices
monster:voices({
    {text = "To arms, sisters!", yell = false},
    {text = "Feel the wrath of mother forest!", yell = false},
    {text = "By the power of Greenskull!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 87250, maxCount = 53},
    {id = 2543, chance = 48270, maxCount = 15},
    {id = 2666, chance = 24930},
    {id = 7363, chance = 14900, maxCount = 5},
    {id = 21312, chance = 13210},
    {id = 21311, chance = 7030},
    {id = 2455, chance = 2750},
    {id = 9970, chance = 470},
    {id = 7438, chance = 90}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -90},
    {name = "physical", interval = 1500, chance = 40, maxDamage = -100, range = 7, radius = 4},
    {name = "forest fury skill reducer", interval = 2000, chance = 20, range = 5}
})

monster:register()
