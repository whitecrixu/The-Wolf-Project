-- Askarak Prince
-- Converted from XML

local monster = Game.createMonsterType("Askarak Prince")
if not monster then return end

monster:name("Askarak Prince")
monster:nameDescription("an askarak prince")
monster:health(2600)
monster:maxHealth(2600)
monster:experience(1700)
monster:speed(240)
monster:race(RACE_VENOM)
monster:corpseId(13957)
monster:outfit({lookType = 419})
monster:defense(30)
monster:armor(30)

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
    {text = "DEATH TO THE SHABRUAK!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 100},
    {id = 2148, chance = 50000, maxCount = 86},
    {id = 2152, chance = 35333, maxCount = 4},
    {id = 7589, chance = 14285},
    {id = 7588, chance = 14285},
    {id = 2149, chance = 12500, maxCount = 5},
    {id = 2789, chance = 6666, maxCount = 5},
    {id = 2165, chance = 4545},
    {id = 7440, chance = 1315},
    {id = 8912, chance = 950},
    {id = 5904, chance = 740},
    {id = 7884, chance = 840},
    {id = 13530, chance = 420},
    {id = 2393, chance = 320}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -158},
    {name = "earth", interval = 2000, chance = 20, minDamage = -70, maxDamage = -250, range = 7, radius = 6},
    {name = "earth", interval = 2000, chance = 15, minDamage = -100, maxDamage = -200, length = 4, spread = 3},
    {name = "speed", interval = 2000, chance = 15, radius = 1}
})

monster:register()
