-- Hellgorak
-- Converted from XML

local monster = Game.createMonsterType("Hellgorak")
if not monster then return end

monster:name("Hellgorak")
monster:nameDescription("Hellgorak")
monster:health(30000)
monster:maxHealth(30000)
monster:experience(10000)
monster:speed(330)
monster:race(RACE_FIRE)
monster:corpseId(8721)
monster:outfit({lookType = 12, lookHead = 19, lookBody = 77, lookLegs = 3, lookFeet = 80})
monster:defense(65)
monster:armor(70)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ICEDAMAGE, percent = 98},
    {type = COMBAT_ENERGYDAMAGE, percent = 98},
    {type = COMBAT_EARTHDAMAGE, percent = 98},
    {type = COMBAT_HOLYDAMAGE, percent = 98},
    {type = COMBAT_DEATHDAMAGE, percent = 98},
    {type = COMBAT_FIREDAMAGE, percent = 98},
    {type = COMBAT_PHYSICALDAMAGE, percent = 98},
    {type = COMBAT_DROWNDAMAGE, percent = -205}
})

-- Immunities
monster:immunities({
    {type = COMBAT_LIFEDRAIN, combat = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "I'll sacrifice yours souls to seven!", yell = false},
    {text = "I'm bad news for you mortals!", yell = false},
    {text = "No man can defeat me!", yell = false},
    {text = "Your puny skills are no match for me.", yell = false},
    {text = "I smell your fear. Delicious!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 200},
    {id = 9813, chance = 49920},
    {id = 8473, chance = 41750, maxCount = 2},
    {id = 8901, chance = 31010},
    {id = 9810, chance = 30560},
    {id = 3962, chance = 29950},
    {id = 2152, chance = 21790, maxCount = 30},
    {id = 8472, chance = 21180},
    {id = 7591, chance = 20570},
    {id = 2487, chance = 19670},
    {id = 7590, chance = 16190},
    {id = 2144, chance = 14070, maxCount = 25},
    {id = 2143, chance = 13920, maxCount = 25},
    {id = 7456, chance = 12860},
    {id = 2145, chance = 12860, maxCount = 25},
    {id = 2147, chance = 13010, maxCount = 5},
    {id = 2125, chance = 12710},
    {id = 2150, chance = 12410, maxCount = 25},
    {id = 2133, chance = 11800},
    {id = 2146, chance = 11650, maxCount = 25},
    {id = 7894, chance = 11350},
    {id = 9970, chance = 11200, maxCount = 25},
    {id = 2149, chance = 10740, maxCount = 25},
    {id = 2645, chance = 10740},
    {id = 8871, chance = 10590},
    {id = 2488, chance = 10140},
    {id = 8870, chance = 10140},
    {id = 2130, chance = 9680},
    {id = 2477, chance = 9530},
    {id = 5954, chance = 9230, maxCount = 2},
    {id = 8902, chance = 8770},
    {id = 8903, chance = 8620},
    {id = 2179, chance = 8320},
    {id = 2656, chance = 8170},
    {id = 2466, chance = 2870},
    {id = 7412, chance = 2720},
    {id = 7388, chance = 1970},
    {id = 8904, chance = 1360},
    {id = 7453, chance = 610},
    {id = 8926, chance = 450},
    {id = 2470, chance = 450},
    {id = 8879, chance = 450},
    {id = 8918, chance = 300},
    {id = 2136, chance = 150},
    {id = 2415, chance = 100}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -250},
    {name = "energy", interval = 2000, chance = 12, minDamage = -250, maxDamage = -820, length = 8},
    {name = "manadrain", interval = 2000, chance = 9, minDamage = -90, maxDamage = -500, radius = 5},
    {name = "manadrain", interval = 2000, chance = 11, minDamage = -250, maxDamage = -420, range = 7},
    {name = "energy", interval = 2000, chance = 8, minDamage = -200, maxDamage = -400, range = 7},
    {name = "fire", interval = 2000, chance = 15, minDamage = -120, maxDamage = -570, range = 7, radius = 4},
    {name = "hellgorak skill reducer", interval = 2000, chance = 11}
})

monster:register()
