-- Grand Mother Foulscale
-- Converted from XML

local monster = Game.createMonsterType("Grand Mother Foulscale")
if not monster then return end

monster:name("Grand Mother Foulscale")
monster:nameDescription("a grand mother foulscale")
monster:health(1850)
monster:maxHealth(1850)
monster:experience(1400)
monster:speed(180)
monster:race(RACE_BLOOD)
monster:corpseId(5973)
monster:outfit({lookType = 34})
monster:defense(20)
monster:armor(27)
monster:runHealth(185)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_EARTHDAMAGE, percent = 80},
    {type = COMBAT_ENERGYDAMAGE, percent = 20},
    {type = COMBAT_ICEDAMAGE, percent = -10}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "GROOAAARRR", yell = true},
    {text = "FCHHHHH", yell = true}
})

-- Loot
monster:loot({
    {id = 2148, chance = 37500, maxCount = 70},
    {id = 2148, chance = 37500, maxCount = 50},
    {id = 2546, chance = 4000, maxCount = 12},
    {id = 2672, chance = 15500, maxCount = 3},
    {id = 2406, chance = 25000},
    {id = 2398, chance = 21500},
    {id = 2509, chance = 14000},
    {id = 2455, chance = 10000},
    {id = 2397, chance = 5000},
    {id = 2457, chance = 3000},
    {id = 2647, chance = 2000},
    {id = 2413, chance = 2000},
    {id = 7588, chance = 1750},
    {id = 2387, chance = 1333},
    {id = 2187, chance = 1800},
    {id = 5920, chance = 100000},
    {id = 2434, chance = 600},
    {id = 5877, chance = 100000},
    {id = 2145, chance = 500},
    {id = 2516, chance = 500},
    {id = 2409, chance = 500},
    {id = 7430, chance = 650},
    {id = 2177, chance = 150}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = -20, maxDamage = -170},
    {name = "fire", interval = 2000, chance = 15, minDamage = -45, maxDamage = -85, range = 7, radius = 4},
    {name = "fire", interval = 2000, chance = 8, minDamage = -90, maxDamage = -150, length = 8, spread = 3}
})

monster:register()
