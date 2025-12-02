-- Worm Priestess
-- Converted from XML

local monster = Game.createMonsterType("Worm Priestess")
if not monster then return end

monster:name("Worm Priestess")
monster:nameDescription("a worm priestess")
monster:health(1100)
monster:maxHealth(1100)
monster:experience(1500)
monster:speed(198)
monster:race(RACE_BLOOD)
monster:corpseId(23470)
monster:outfit({lookType = 613})
monster:defense(20)
monster:armor(20)
monster:runHealth(110)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 25},
    {type = COMBAT_EARTHDAMAGE, percent = -10},
    {type = COMBAT_DEATHDAMAGE, percent = -10},
    {type = COMBAT_ICEDAMAGE, percent = 5}
})

-- Voices
monster:voices({
    {text = "An enemy of the worm shall become his food!", yell = false},
    {text = "The great worm will swallow you!", yell = false},
    {text = "And our enemies he will swallow!", yell = false},
    {text = "The worm may guide me in this hour of darkness!", yell = false},
    {text = "From the earthy depths he comes and brings freedom!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 150},
    {id = 2152, chance = 41130, maxCount = 3},
    {id = 12429, chance = 15850},
    {id = 7589, chance = 12380, maxCount = 3},
    {id = 2182, chance = 11470},
    {id = 7425, chance = 5210},
    {id = 2050, chance = 4760},
    {id = 5878, chance = 4640},
    {id = 12428, chance = 2940, maxCount = 2},
    {id = 2150, chance = 2500, maxCount = 2},
    {id = 2149, chance = 2370, maxCount = 2},
    {id = 2147, chance = 2200, maxCount = 2},
    {id = 9970, chance = 2460, maxCount = 2},
    {id = 2145, chance = 2430, maxCount = 2},
    {id = 5911, chance = 1350},
    {id = 5910, chance = 1400},
    {id = 5912, chance = 1820},
    {id = 8910, chance = 1590},
    {id = 2154, chance = 560},
    {id = 2156, chance = 430},
    {id = 7401, chance = 160}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -100},
    {name = "lifedrain", interval = 2000, chance = 24, minDamage = -50, maxDamage = -130, range = 7},
    {name = "energy", interval = 2000, chance = 16, minDamage = -100, maxDamage = -165, range = 4},
    {name = "worm priestess paralyze", interval = 2000, chance = 12},
    {name = "death", interval = 2000, chance = 10, minDamage = -115, maxDamage = -200, range = 7, radius = 3},
    {name = "earth", interval = 2000, chance = 13, minDamage = -200, maxDamage = -300, range = 7, radius = 4}
})

monster:register()
