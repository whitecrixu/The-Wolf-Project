-- Minotaur Guard
-- Converted from XML

local monster = Game.createMonsterType("Minotaur Guard")
if not monster then return end

monster:name("Minotaur Guard")
monster:nameDescription("a minotaur guard")
monster:health(185)
monster:maxHealth(185)
monster:experience(160)
monster:speed(250)
monster:race(RACE_BLOOD)
monster:manaCost(550)
monster:corpseId(5983)
monster:outfit({lookType = 29})
monster:defense(20)
monster:armor(20)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isSummonable(true)
monster:isConvinceable(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = 20},
    {type = COMBAT_HOLYDAMAGE, percent = 10},
    {type = COMBAT_ICEDAMAGE, percent = -10},
    {type = COMBAT_DEATHDAMAGE, percent = -10}
})

-- Voices
monster:voices({
    {text = "Kirll Karrrl!", yell = false},
    {text = "Kaplar!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 59640, maxCount = 20},
    {id = 2580, chance = 480},
    {id = 2465, chance = 4390},
    {id = 2464, chance = 2980},
    {id = 2513, chance = 2150},
    {id = 5878, chance = 1000},
    {id = 2387, chance = 400},
    {id = 7618, chance = 400},
    {id = 7401, chance = 80},
    {id = 12428, chance = 8330, maxCount = 2},
    {id = 12438, chance = 5040}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -80}
})

monster:register()
