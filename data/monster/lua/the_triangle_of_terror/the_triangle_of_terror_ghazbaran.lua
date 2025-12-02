-- Ghazbaran
-- Converted from XML

local monster = Game.createMonsterType("Ghazbaran")
if not monster then return end

monster:name("Ghazbaran")
monster:nameDescription("a ghazbaran")
monster:health(60000)
monster:maxHealth(60000)
monster:experience(15000)
monster:speed(400)
monster:race(RACE_UNDEAD)
monster:corpseId(6068)
monster:outfit({lookType = 12, lookBody = 123, lookLegs = 97, lookFeet = 94})
monster:defense(65)
monster:armor(55)
monster:runHealth(6000)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 1},
    {type = COMBAT_DEATHDAMAGE, percent = 1},
    {type = COMBAT_HOLYDAMAGE, percent = -1}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true},
    {type = COMBAT_ICEDAMAGE, combat = true},
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "COME AND GIVE ME SOME AMUSEMENT", yell = false},
    {text = "IS THAT THE BEST YOU HAVE TO OFFER?", yell = true},
    {text = "I AM GHAZBARAN OF THE TRIANGLE... AND I AM HERE TO CHALLENGE YOU ALL.", yell = true},
    {text = "FLAWLESS VICTORY!", yell = true}
})

-- Loot
monster:loot({
    {id = 6500, chance = 100000},
    {id = 2152, chance = 100000, maxCount = 69},
    {id = 5954, chance = 33333, maxCount = 2},
    {id = 2145, chance = 25000, maxCount = 5},
    {id = 6300, chance = 25000},
    {id = 8472, chance = 25000},
    {id = 8904, chance = 25000},
    {id = 8473, chance = 25000},
    {id = 2143, chance = 25000, maxCount = 15},
    {id = 7591, chance = 20000},
    {id = 2214, chance = 20000},
    {id = 2149, chance = 25000, maxCount = 10},
    {id = 1984, chance = 20000},
    {id = 7590, chance = 20000},
    {id = 2155, chance = 20000},
    {id = 2178, chance = 20000},
    {id = 7493, chance = 20000},
    {id = 2150, chance = 25000, maxCount = 17},
    {id = 2146, chance = 25000, maxCount = 10},
    {id = 8901, chance = 20000},
    {id = 2179, chance = 20000},
    {id = 8918, chance = 20000},
    {id = 7405, chance = 16666},
    {id = 8884, chance = 16666},
    {id = 8903, chance = 16666},
    {id = 2158, chance = 14285},
    {id = 7433, chance = 14285},
    {id = 6553, chance = 14285},
    {id = 7368, chance = 12500, maxCount = 44},
    {id = 2520, chance = 12500},
    {id = 2177, chance = 12500},
    {id = 2164, chance = 12500},
    {id = 2165, chance = 12500},
    {id = 2151, chance = 12500, maxCount = 7},
    {id = 2112, chance = 12500},
    {id = 2144, chance = 11111, maxCount = 14},
    {id = 8902, chance = 11111},
    {id = 2174, chance = 11111},
    {id = 2447, chance = 11111},
    {id = 2124, chance = 8333},
    {id = 8887, chance = 8333},
    {id = 7896, chance = 8333},
    {id = 2466, chance = 8333},
    {id = 2646, chance = 8333},
    {id = 2472, chance = 8333}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = -500, maxDamage = -2191},
    {name = "melee", interval = 2000, chance = 40, minDamage = -250, maxDamage = -500},
    {name = "melee", interval = 3000, chance = 34, minDamage = -120, maxDamage = -500},
    {name = "energy", interval = 4000, chance = 30, minDamage = -100, maxDamage = -800, length = 8},
    {name = "physical", interval = 3000, chance = 20, minDamage = -200, maxDamage = -480, range = 14, radius = 5},
    {name = "physical", interval = 4000, chance = 15, minDamage = -100, maxDamage = -650, range = 7, radius = 13},
    {name = "physical", interval = 4000, chance = 18, minDamage = -200, maxDamage = -600, radius = 14},
    {name = "melee", interval = 3000, chance = 15, minDamage = -200, maxDamage = -750}
})

monster:register()
