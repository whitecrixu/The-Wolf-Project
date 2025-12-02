-- Island Troll
-- Converted from XML

local monster = Game.createMonsterType("Island Troll")
if not monster then return end

monster:name("Island Troll")
monster:nameDescription("an island troll")
monster:health(50)
monster:maxHealth(50)
monster:experience(20)
monster:speed(190)
monster:race(RACE_BLOOD)
monster:manaCost(290)
monster:corpseId(7930)
monster:outfit({lookType = 282})
monster:defense(10)
monster:armor(10)
monster:runHealth(5)

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
    {text = "Hmmm, turtles", yell = false},
    {text = "Hmmm, dogs", yell = false},
    {text = "Hmmm, worms", yell = false},
    {text = "Groar", yell = false},
    {text = "Gruntz!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 60000, maxCount = 10},
    {id = 5901, chance = 30000},
    {id = 2389, chance = 20000},
    {id = 2380, chance = 18000},
    {id = 2512, chance = 16000},
    {id = 2643, chance = 10500},
    {id = 2461, chance = 10000},
    {id = 2120, chance = 8000},
    {id = 2448, chance = 5000},
    {id = 5097, chance = 5000},
    {id = 2170, chance = 70},
    {id = 7963, chance = 40}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -10}
})

monster:register()
