-- Askarak Demon
-- Converted from XML

local monster = Game.createMonsterType("Askarak Demon")
if not monster then return end

monster:name("Askarak Demon")
monster:nameDescription("an askarak demon")
monster:health(1500)
monster:maxHealth(1500)
monster:experience(900)
monster:speed(220)
monster:race(RACE_VENOM)
monster:corpseId(13815)
monster:outfit({lookType = 420})
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
    {type = COMBAT_FIREDAMAGE, percent = -30}
})

-- Immunities
monster:immunities({
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "POWER TO THE ASKARAK!", yell = false},
    {text = "GREEN WILL RULE!", yell = false},
    {text = "GREEN IS MEAN!", yell = false},
    {text = "ONLY WE ARE TRUE DEMONS!", yell = false},
    {text = "RED IS MAD", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 100},
    {id = 2148, chance = 50000, maxCount = 100},
    {id = 2148, chance = 40000, maxCount = 35},
    {id = 2149, chance = 6250, maxCount = 4},
    {id = 7589, chance = 5263},
    {id = 7588, chance = 5263},
    {id = 7368, chance = 4761, maxCount = 5},
    {id = 2789, chance = 3846, maxCount = 5},
    {id = 2114, chance = 1052},
    {id = 2167, chance = 961},
    {id = 8912, chance = 512},
    {id = 7440, chance = 431},
    {id = 7885, chance = 123},
    {id = 5904, chance = 102}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -97},
    {name = "earth", interval = 2000, chance = 20, minDamage = -20, maxDamage = -60, range = 7, radius = 6},
    {name = "earth", interval = 2000, chance = 15, minDamage = -75, maxDamage = -140, length = 4, spread = 3},
    {name = "earth", interval = 2000, chance = 10, minDamage = -130, maxDamage = -170, length = 4},
    {name = "speed", interval = 2000, chance = 10, radius = 1}
})

monster:register()
