-- Golgordan
-- Converted from XML

local monster = Game.createMonsterType("Golgordan")
if not monster then return end

monster:name("Golgordan")
monster:nameDescription("Golgordan")
monster:health(40000)
monster:maxHealth(40000)
monster:experience(10000)
monster:speed(350)
monster:race(RACE_FIRE)
monster:corpseId(8721)
monster:outfit({lookType = 12, lookHead = 108, lookBody = 100, lookLegs = 105, lookFeet = 114})
monster:defense(54)
monster:armor(48)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ICEDAMAGE, percent = -1},
    {type = COMBAT_HOLYDAMAGE, percent = 1},
    {type = COMBAT_PHYSICALDAMAGE, percent = 1},
    {type = COMBAT_FIREDAMAGE, percent = -1}
})

-- Immunities
monster:immunities({
    {type = COMBAT_DEATHDAMAGE, combat = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Latrivan, you fool!", yell = true},
    {text = "We are the right hand and the left hand of the seven!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 273},
    {id = 7591, chance = 55000},
    {id = 2387, chance = 30000},
    {id = 6300, chance = 25000},
    {id = 2214, chance = 25000},
    {id = 2144, chance = 20000, maxCount = 13},
    {id = 2149, chance = 20000, maxCount = 10},
    {id = 2396, chance = 15000},
    {id = 2162, chance = 15000},
    {id = 2170, chance = 15000},
    {id = 2146, chance = 15000, maxCount = 10},
    {id = 2143, chance = 15000, maxCount = 13},
    {id = 2520, chance = 10000},
    {id = 6500, chance = 10000},
    {id = 2167, chance = 10000},
    {id = 2393, chance = 10000},
    {id = 9971, chance = 10000},
    {id = 2179, chance = 10000},
    {id = 2470, chance = 10000},
    {id = 2158, chance = 5000},
    {id = 2462, chance = 5000},
    {id = 2432, chance = 5000},
    {id = 2155, chance = 5000},
    {id = 2164, chance = 5000},
    {id = 2402, chance = 5000},
    {id = 2150, chance = 15000, maxCount = 12},
    {id = 2182, chance = 5000},
    {id = 2165, chance = 5000},
    {id = 2197, chance = 5000}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -500},
    {name = "fire", interval = 2000, chance = 15, minDamage = -60, maxDamage = -200, range = 7, radius = 4},
    {name = "poisoncondition", interval = 1000, chance = 11, minDamage = -30, maxDamage = -30, length = 5},
    {name = "death", interval = 3000, chance = 15, minDamage = -50, maxDamage = -600, length = 8, spread = 3},
    {name = "death", interval = 2000, chance = 10, maxDamage = -600, range = 4, radius = 1},
    {name = "fire", interval = 2000, chance = 10, maxDamage = -600, length = 8, spread = 3},
    {name = "physical", interval = 1000, chance = 8, minDamage = -50, maxDamage = -60, radius = 6}
})

monster:register()
