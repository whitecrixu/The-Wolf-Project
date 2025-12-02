-- Troll Champion
-- Converted from XML

local monster = Game.createMonsterType("Troll Champion")
if not monster then return end

monster:name("Troll Champion")
monster:nameDescription("a troll champion")
monster:health(75)
monster:maxHealth(75)
monster:experience(40)
monster:speed(190)
monster:race(RACE_BLOOD)
monster:manaCost(340)
monster:corpseId(7926)
monster:outfit({lookType = 281})
monster:defense(20)
monster:armor(20)
monster:runHealth(7)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isSummonable(true)
monster:isConvinceable(true)
monster:isIllusionable(true)
monster:pushable(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 15},
    {type = COMBAT_HOLYDAMAGE, percent = 10},
    {type = COMBAT_EARTHDAMAGE, percent = -10},
    {type = COMBAT_DEATHDAMAGE, percent = -10}
})

-- Voices
monster:voices({
    {text = "Meee maity!", yell = false},
    {text = "Grrrr", yell = false},
    {text = "Whaaaz up!?", yell = false},
    {text = "Gruntz!", yell = false},
    {text = "Groar", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 64000, maxCount = 12},
    {id = 2389, chance = 25000},
    {id = 2666, chance = 9650},
    {id = 2643, chance = 9000},
    {id = 2512, chance = 6000},
    {id = 2544, chance = 5450, maxCount = 5},
    {id = 2448, chance = 5450},
    {id = 10606, chance = 3000},
    {id = 12471, chance = 750},
    {id = 2170, chance = 230}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -35}
})

monster:register()
