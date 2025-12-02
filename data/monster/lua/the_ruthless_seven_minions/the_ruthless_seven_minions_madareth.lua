-- Madareth
-- Converted from XML

local monster = Game.createMonsterType("Madareth")
if not monster then return end

monster:name("Madareth")
monster:nameDescription("Madareth")
monster:health(75000)
monster:maxHealth(75000)
monster:experience(10000)
monster:speed(380)
monster:race(RACE_FIRE)
monster:corpseId(8721)
monster:outfit({lookType = 12, lookHead = 77, lookBody = 116, lookLegs = 82, lookFeet = 79})
monster:defense(46)
monster:armor(48)
monster:runHealth(7500)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = -5},
    {type = COMBAT_ICEDAMAGE, percent = 5},
    {type = COMBAT_DEATHDAMAGE, percent = 95},
    {type = COMBAT_ENERGYDAMAGE, percent = 99}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true}
})

-- Voices
monster:voices({
    {text = "I am going to play with yourself!", yell = true},
    {text = "Feel my wrath!", yell = false},
    {text = "No one matches my battle prowess!", yell = false},
    {text = "You will all die!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 150},
    {id = 9813, chance = 59000},
    {id = 9810, chance = 40000},
    {id = 7443, chance = 33000},
    {id = 7591, chance = 30000},
    {id = 8472, chance = 30000},
    {id = 7440, chance = 28000},
    {id = 7439, chance = 23000},
    {id = 7590, chance = 21000},
    {id = 6300, chance = 19000},
    {id = 2183, chance = 19000},
    {id = 2370, chance = 19000},
    {id = 2152, chance = 19000, maxCount = 26},
    {id = 2377, chance = 19000},
    {id = 7404, chance = 16000},
    {id = 2208, chance = 16000},
    {id = 8473, chance = 16000},
    {id = 8910, chance = 16000},
    {id = 2209, chance = 14000},
    {id = 6500, chance = 14000},
    {id = 7407, chance = 14000},
    {id = 2071, chance = 14000},
    {id = 7418, chance = 14000},
    {id = 8912, chance = 14000},
    {id = 3953, chance = 14000},
    {id = 2187, chance = 11000},
    {id = 8922, chance = 11000},
    {id = 7416, chance = 9500},
    {id = 7449, chance = 9500},
    {id = 2214, chance = 9500},
    {id = 5954, chance = 7000, maxCount = 2},
    {id = 2168, chance = 7000},
    {id = 7383, chance = 7000},
    {id = 2169, chance = 7000},
    {id = 8920, chance = 7000},
    {id = 2079, chance = 7000},
    {id = 2374, chance = 7000},
    {id = 3952, chance = 4700},
    {id = 2213, chance = 4700},
    {id = 2396, chance = 4700},
    {id = 7386, chance = 4700},
    {id = 2207, chance = 4700}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -2000},
    {name = "energy", interval = 2000, chance = 15, minDamage = -180, maxDamage = -660, radius = 4},
    {name = "death", interval = 2000, chance = 10, minDamage = -600, maxDamage = -850, length = 5, spread = 2},
    {name = "manadrain", interval = 2000, chance = 20, maxDamage = -200, radius = 4},
    {name = "manadrain", interval = 2000, chance = 5, maxDamage = -250, radius = 5}
})

monster:register()
