-- Askarak Lord
-- Converted from XML

local monster = Game.createMonsterType("Askarak Lord")
if not monster then return end

monster:name("Askarak Lord")
monster:nameDescription("an askarak lord")
monster:health(2100)
monster:maxHealth(2100)
monster:experience(1200)
monster:speed(230)
monster:race(RACE_VENOM)
monster:corpseId(13956)
monster:outfit({lookType = 410})
monster:defense(20)
monster:armor(20)

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
    {type = COMBAT_FIREDAMAGE, percent = -10}
})

-- Immunities
monster:immunities({
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "WE RULE!", yell = false},
    {text = "RED IS MAD", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 100},
    {id = 2148, chance = 50000, maxCount = 90},
    {id = 2152, chance = 35333, maxCount = 2},
    {id = 7589, chance = 7692},
    {id = 7588, chance = 6250},
    {id = 2149, chance = 5882, maxCount = 5},
    {id = 2789, chance = 5263, maxCount = 5},
    {id = 8912, chance = 1010},
    {id = 2167, chance = 606},
    {id = 7440, chance = 750},
    {id = 5904, chance = 620},
    {id = 7368, chance = 70, maxCount = 5},
    {id = 7884, chance = 70},
    {id = 7419, chance = 30}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -112},
    {name = "earth", interval = 2000, chance = 20, minDamage = -40, maxDamage = -80, range = 7, radius = 6},
    {name = "earth", interval = 2000, chance = 15, minDamage = -95, maxDamage = -180, length = 4, spread = 3},
    {name = "earth", interval = 2000, chance = 10, minDamage = -130, maxDamage = -180, length = 4},
    {name = "speed", interval = 2000, chance = 15, radius = 1}
})

monster:register()
