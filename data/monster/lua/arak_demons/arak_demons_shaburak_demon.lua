-- Shaburak Demon
-- Converted from XML

local monster = Game.createMonsterType("Shaburak Demon")
if not monster then return end

monster:name("Shaburak Demon")
monster:nameDescription("a shaburak demon")
monster:health(1500)
monster:maxHealth(1500)
monster:experience(900)
monster:speed(220)
monster:race(RACE_FIRE)
monster:corpseId(13814)
monster:outfit({lookType = 417})
monster:defense(15)
monster:armor(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 50},
    {type = COMBAT_ICEDAMAGE, percent = 50},
    {type = COMBAT_EARTHDAMAGE, percent = -30}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "GREEN IS MEAN!", yell = true},
    {text = "WE RULE!", yell = true},
    {text = "POWER TO THE SHABURAK!", yell = true},
    {text = "DEATH TO THE ASKARAK!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 100},
    {id = 2148, chance = 50000, maxCount = 100},
    {id = 2148, chance = 50000, maxCount = 50},
    {id = 7378, chance = 10000, maxCount = 6},
    {id = 7589, chance = 5000},
    {id = 7588, chance = 4761},
    {id = 2147, chance = 4761, maxCount = 5},
    {id = 2789, chance = 3846},
    {id = 2167, chance = 1052},
    {id = 2114, chance = 1030},
    {id = 7443, chance = 628},
    {id = 2187, chance = 564},
    {id = 7894, chance = 155},
    {id = 5904, chance = 81}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -85},
    {name = "fire", interval = 2000, chance = 20, minDamage = -20, maxDamage = -60, range = 7, radius = 6},
    {name = "fire", interval = 2000, chance = 15, minDamage = -70, maxDamage = -140, length = 4, spread = 3},
    {name = "fire", interval = 2000, chance = 10, minDamage = -130, maxDamage = -170, length = 4},
    {name = "speed", interval = 2000, chance = 10, radius = 1}
})

monster:register()
