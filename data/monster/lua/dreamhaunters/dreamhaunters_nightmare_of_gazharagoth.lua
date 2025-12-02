-- Nightmare of Gaz'haragoth
-- Converted from XML

local monster = Game.createMonsterType("Nightmare of Gaz'haragoth")
if not monster then return end

monster:name("Nightmare of Gaz'haragoth")
monster:nameDescription("Nightmare of Gaz'haragoth")
monster:health(9400)
monster:maxHealth(9400)
monster:experience(5700)
monster:speed(270)
monster:race(RACE_BLOOD)
monster:corpseId(22497)
monster:outfit({lookType = 587})
monster:defense(55)
monster:armor(55)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ICEDAMAGE, percent = -10},
    {type = COMBAT_FIREDAMAGE, percent = -10}
})

-- Immunities
monster:immunities({
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_ENERGY, immunity = true},
    {type = COMBAT_LIFEDRAIN, combat = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Knorrrr!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 30000, maxCount = 100},
    {id = 2152, chance = 33333, maxCount = 10},
    {id = 7590, chance = 3100, maxCount = 4},
    {id = 5880, chance = 2195, maxCount = 2},
    {id = 8473, chance = 2195, maxCount = 2},
    {id = 18435, chance = 366, maxCount = 8},
    {id = 2144, chance = 866},
    {id = 2143, chance = 866},
    {id = 18390, chance = 1766},
    {id = 18412, chance = 1066},
    {id = 2477, chance = 444},
    {id = 9980, chance = 1066},
    {id = 2393, chance = 422},
    {id = 11227, chance = 1032},
    {id = 5904, chance = 632},
    {id = 2487, chance = 632},
    {id = 18453, chance = 603},
    {id = 18450, chance = 603}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -180},
    {name = "earth", interval = 1800, chance = 10, minDamage = -300, maxDamage = -685, length = 7},
    {name = "earth", interval = 2000, chance = 9, minDamage = -250, maxDamage = -590, radius = 6}
})

monster:register()
