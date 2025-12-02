-- Wyrm
-- Converted from XML

local monster = Game.createMonsterType("Wyrm")
if not monster then return end

monster:name("Wyrm")
monster:nameDescription("a wyrm")
monster:health(1825)
monster:maxHealth(1825)
monster:experience(1550)
monster:speed(230)
monster:race(RACE_BLOOD)
monster:corpseId(8941)
monster:outfit({lookType = 291})
monster:defense(35)
monster:armor(35)
monster:runHealth(182)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = 20},
    {type = COMBAT_EARTHDAMAGE, percent = 75},
    {type = COMBAT_DEATHDAMAGE, percent = -5},
    {type = COMBAT_ICEDAMAGE, percent = -5}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_ENERGY, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {type = COMBAT_LIFEDRAIN, combat = true}
})

-- Voices
monster:voices({
    {text = "GRRR!", yell = false},
    {text = "GROOOOAAAAAAAAR!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 30000, maxCount = 100},
    {id = 2148, chance = 30000, maxCount = 100},
    {id = 2148, chance = 30000, maxCount = 30},
    {id = 2672, chance = 34800, maxCount = 3},
    {id = 2546, chance = 7650, maxCount = 10},
    {id = 7588, chance = 19970},
    {id = 8921, chance = 990},
    {id = 2145, chance = 750, maxCount = 3},
    {id = 7589, chance = 15310},
    {id = 2455, chance = 5920},
    {id = 7889, chance = 720},
    {id = 8871, chance = 1250},
    {id = 8920, chance = 420},
    {id = 8873, chance = 250},
    {id = 7430, chance = 110},
    {id = 8855, chance = 90},
    {id = 10582, chance = 15360},
    {id = 10221, chance = 110}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -127},
    {name = "energy", interval = 2000, chance = 15, minDamage = -100, maxDamage = -220, radius = 3},
    {name = "energy", interval = 2000, chance = 10, minDamage = -130, maxDamage = -200, length = 5, spread = 2},
    {name = "energy", interval = 2000, chance = 20, minDamage = -100, maxDamage = -125, range = 7},
    {name = "lifedrain", interval = 2000, chance = 10, minDamage = -98, maxDamage = -145, length = 4}
})

monster:register()
