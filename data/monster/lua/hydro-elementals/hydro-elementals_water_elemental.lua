-- Water Elemental
-- Converted from XML

local monster = Game.createMonsterType("Water Elemental")
if not monster then return end

monster:name("Water Elemental")
monster:nameDescription("a water elemental")
monster:health(550)
monster:maxHealth(550)
monster:experience(650)
monster:speed(220)
monster:race(RACE_UNDEAD)
monster:corpseId(10499)
monster:outfit({lookType = 286})
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
    {type = COMBAT_PHYSICALDAMAGE, percent = 35},
    {type = COMBAT_HOLYDAMAGE, percent = 50},
    {type = COMBAT_DEATHDAMAGE, percent = 50},
    {type = COMBAT_ENERGYDAMAGE, percent = -25}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_DROWN, immunity = true},
    {condition = CONDITION_FIRE, immunity = true},
    {type = COMBAT_ICEDAMAGE, combat = true},
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {type = COMBAT_LIFEDRAIN, combat = true}
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 100},
    {id = 2152, chance = 10000},
    {id = 2667, chance = 20000},
    {id = 2149, chance = 1000, maxCount = 2},
    {id = 2145, chance = 1000},
    {id = 2146, chance = 1000},
    {id = 7632, chance = 800},
    {id = 7633, chance = 800},
    {id = 7588, chance = 10000},
    {id = 7589, chance = 10000},
    {id = 2167, chance = 950},
    {id = 2168, chance = 930},
    {id = 7158, chance = 940},
    {id = 7159, chance = 1050},
    {id = 10220, chance = 260}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -110},
    {name = "drown", interval = 2000, chance = 10, minDamage = -125, maxDamage = -235, range = 7, radius = 2},
    {name = "icicle", interval = 2000, chance = 20, minDamage = -88, maxDamage = -150, range = 7},
    {name = "poisoncondition", interval = 2000, chance = 15, minDamage = -225, maxDamage = -260, radius = 5}
})

monster:register()
