-- Diabolic Imp
-- Converted from XML

local monster = Game.createMonsterType("Diabolic Imp")
if not monster then return end

monster:name("Diabolic Imp")
monster:nameDescription("a diabolic imp")
monster:health(2900)
monster:maxHealth(2900)
monster:experience(1950)
monster:speed(220)
monster:race(RACE_FIRE)
monster:corpseId(6364)
monster:outfit({lookType = 237})
monster:defense(25)
monster:armor(25)
monster:runHealth(290)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_DEATHDAMAGE, percent = 10},
    {type = COMBAT_EARTHDAMAGE, percent = 50},
    {type = COMBAT_ICEDAMAGE, percent = -10},
    {type = COMBAT_HOLYDAMAGE, percent = -10}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true},
    {type = COMBAT_LIFEDRAIN, combat = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Muahaha!", yell = false},
    {text = "He he he.", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 100},
    {id = 2148, chance = 40000, maxCount = 97},
    {id = 2548, chance = 50000},
    {id = 6558, chance = 25000, maxCount = 2},
    {id = 2260, chance = 16666, maxCount = 2},
    {id = 6500, chance = 8000},
    {id = 2515, chance = 8130},
    {id = 2568, chance = 8830},
    {id = 2419, chance = 5660},
    {id = 5944, chance = 7230},
    {id = 2148, chance = 3390, maxCount = 7},
    {id = 2150, chance = 2250, maxCount = 3},
    {id = 2165, chance = 2702},
    {id = 2387, chance = 1994},
    {id = 6300, chance = 120},
    {id = 7899, chance = 250},
    {id = 7900, chance = 430},
    {id = 2185, chance = 830}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -130},
    {name = "fire", interval = 2000, chance = 20, minDamage = -100, maxDamage = -240, range = 7, radius = 4},
    {name = "fire", interval = 2000, chance = 10, minDamage = -300, maxDamage = -430, range = 7, radius = 2},
    {name = "diabolic imp skill reducer", interval = 2000, chance = 5, range = 5}
})

monster:register()
