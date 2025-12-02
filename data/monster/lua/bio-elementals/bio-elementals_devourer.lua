-- Devourer
-- Converted from XML

local monster = Game.createMonsterType("Devourer")
if not monster then return end

monster:name("Devourer")
monster:nameDescription("a devourer")
monster:health(1900)
monster:maxHealth(1900)
monster:experience(1800)
monster:speed(200)
monster:race(RACE_VENOM)
monster:corpseId(23484)
monster:outfit({lookType = 617})
monster:defense(25)
monster:armor(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = -5},
    {type = COMBAT_ICEDAMAGE, percent = 15},
    {type = COMBAT_DEATHDAMAGE, percent = 10}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {type = COMBAT_LIFEDRAIN, combat = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_POISON, immunity = true}
})

-- Voices
monster:voices({
    {text = "*gulp*", yell = false},
    {text = "*Bruaarrr!*", yell = false},
    {text = "*omnnommm nomm*", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 165},
    {id = 2152, chance = 59100, maxCount = 2},
    {id = 23553, chance = 16670},
    {id = 2151, chance = 2440},
    {id = 2146, chance = 4870, maxCount = 3},
    {id = 2150, chance = 5130, maxCount = 3},
    {id = 9970, chance = 6030, maxCount = 3},
    {id = 2149, chance = 5770, maxCount = 3},
    {id = 2147, chance = 6790, maxCount = 3},
    {id = 2145, chance = 7050, maxCount = 3},
    {id = 2154, chance = 1790},
    {id = 2155, chance = 100},
    {id = 23535, chance = 510},
    {id = 23554, chance = 130},
    {id = 23550, chance = 3850},
    {id = 23549, chance = 3210},
    {id = 23551, chance = 2690},
    {id = 23529, chance = 1670},
    {id = 8912, chance = 1150},
    {id = 2181, chance = 260}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -112},
    {name = "lifedrain", interval = 2000, chance = 10, minDamage = -40, maxDamage = -125, range = 7},
    {name = "earth", interval = 2000, chance = 8, minDamage = -50, maxDamage = -160, range = 7},
    {name = "devourer wave", interval = 2000, chance = 5, minDamage = -50, maxDamage = -150},
    {name = "devourer paralyze", interval = 2000, chance = 9},
    {name = "earth", interval = 2000, chance = 11, minDamage = -50, maxDamage = -150, length = 1},
    {name = "earth", interval = 2000, chance = 7, minDamage = -120, maxDamage = -135, radius = 4}
})

monster:register()
