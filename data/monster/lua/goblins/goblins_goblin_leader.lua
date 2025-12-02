-- Goblin Leader
-- Converted from XML

local monster = Game.createMonsterType("Goblin Leader")
if not monster then return end

monster:name("Goblin Leader")
monster:nameDescription("a goblin leader")
monster:health(75)
monster:maxHealth(75)
monster:experience(50)
monster:speed(160)
monster:race(RACE_BLOOD)
monster:manaCost(290)
monster:corpseId(6002)
monster:outfit({lookType = 61})
monster:defense(10)
monster:armor(10)
monster:runHealth(7)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isSummonable(true)
monster:isConvinceable(true)
monster:isIllusionable(true)
monster:pushable(true)
monster:staticAttackChance(90)

-- Voices
monster:voices({
    {text = "Go go, Gobo attack !!", yell = false},
    {text = "Me the greenest and the meanest!", yell = false},
    {text = "Me have power to crush you!", yell = false},
    {text = "Goblinkiller! Catch him !!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 40000, maxCount = 10},
    {id = 2230, chance = 11500},
    {id = 2461, chance = 16670},
    {id = 2467, chance = 5000},
    {id = 2379, chance = 10300},
    {id = 2667, chance = 15000},
    {id = 2235, chance = 9000},
    {id = 2559, chance = 12800},
    {id = 2406, chance = 15400},
    {id = 2449, chance = 1300}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -60},
    {name = "physical", interval = 2000, chance = 15, maxDamage = -45, range = 7}
})

monster:register()
