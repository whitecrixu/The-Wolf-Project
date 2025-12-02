-- Valkyrie
-- Converted from XML

local monster = Game.createMonsterType("Valkyrie")
if not monster then return end

monster:name("Valkyrie")
monster:nameDescription("a valkyrie")
monster:health(190)
monster:maxHealth(190)
monster:experience(85)
monster:speed(190)
monster:race(RACE_BLOOD)
monster:manaCost(450)
monster:corpseId(20523)
monster:outfit({lookType = 139, lookHead = 113, lookBody = 57, lookLegs = 95, lookFeet = 113})
monster:defense(20)
monster:armor(20)
monster:runHealth(19)

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
    {type = COMBAT_ICEDAMAGE, percent = 10},
    {type = COMBAT_FIREDAMAGE, percent = 10},
    {type = COMBAT_HOLYDAMAGE, percent = 5},
    {type = COMBAT_DEATHDAMAGE, percent = -5},
    {type = COMBAT_PHYSICALDAMAGE, percent = -5}
})

-- Voices
monster:voices({
    {text = "Another head for me!", yell = false},
    {text = "Head off!", yell = false},
    {text = "Your head will be mine!", yell = false},
    {text = "Stand still!", yell = false},
    {text = "One more head for me!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 30000, maxCount = 12},
    {id = 2666, chance = 30100},
    {id = 2674, chance = 6800, maxCount = 2},
    {id = 2229, chance = 760},
    {id = 2464, chance = 10000},
    {id = 2389, chance = 55000, maxCount = 3},
    {id = 3965, chance = 5155},
    {id = 2463, chance = 719},
    {id = 2387, chance = 492},
    {id = 2200, chance = 1086},
    {id = 7618, chance = 591},
    {id = 2145, chance = 200},
    {id = 12399, chance = 5800},
    {id = 12400, chance = 3400}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -70},
    {name = "physical", interval = 2000, chance = 15, maxDamage = -50, range = 7}
})

monster:register()
