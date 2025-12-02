-- Dragon
-- Converted from XML

local monster = Game.createMonsterType("Dragon")
if not monster then return end

monster:name("Dragon")
monster:nameDescription("a dragon")
monster:health(1000)
monster:maxHealth(1000)
monster:experience(700)
monster:speed(185)
monster:race(RACE_BLOOD)
monster:corpseId(5973)
monster:outfit({lookType = 34})
monster:defense(30)
monster:armor(30)
monster:runHealth(100)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
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
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_FIRE, immunity = true}
})

-- Voices
monster:voices({
    {text = "GROOAAARRR", yell = true},
    {text = "FCHHHHH", yell = true}
})

-- Loot
monster:loot({
    {id = 2148, chance = 47500, maxCount = 70},
    {id = 2148, chance = 37500, maxCount = 45},
    {id = 12413, chance = 9740},
    {id = 2672, chance = 65500, maxCount = 3},
    {id = 2509, chance = 15000},
    {id = 2455, chance = 10000},
    {id = 2397, chance = 4000},
    {id = 2457, chance = 3000},
    {id = 2647, chance = 2000},
    {id = 2413, chance = 1950},
    {id = 7588, chance = 1000},
    {id = 2387, chance = 960},
    {id = 2187, chance = 1005},
    {id = 5920, chance = 1000},
    {id = 2434, chance = 560},
    {id = 5877, chance = 1005},
    {id = 2145, chance = 380},
    {id = 2516, chance = 320},
    {id = 2409, chance = 420},
    {id = 7430, chance = 110},
    {id = 2177, chance = 120},
    {id = 2546, chance = 8060, maxCount = 10}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -90},
    {name = "fire", interval = 2000, chance = 15, minDamage = -60, maxDamage = -140, range = 7, radius = 4},
    {name = "fire", interval = 2000, chance = 10, minDamage = -100, maxDamage = -170, length = 8, spread = 3}
})

monster:register()
