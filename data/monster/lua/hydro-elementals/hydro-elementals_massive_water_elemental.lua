-- Massive Water Elemental
-- Converted from XML

local monster = Game.createMonsterType("Massive Water Elemental")
if not monster then return end

monster:name("Massive Water Elemental")
monster:nameDescription("a massive water elemental")
monster:health(1250)
monster:maxHealth(1250)
monster:experience(1100)
monster:speed(280)
monster:race(RACE_UNDEAD)
monster:corpseId(10499)
monster:outfit({lookType = 11})
monster:defense(25)
monster:armor(25)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 30},
    {type = COMBAT_HOLYDAMAGE, percent = 30},
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
    {id = 2152, chance = 20000, maxCount = 2},
    {id = 2667, chance = 40000, maxCount = 2},
    {id = 2145, chance = 1900, maxCount = 2},
    {id = 2149, chance = 1000, maxCount = 2},
    {id = 7591, chance = 10000},
    {id = 7590, chance = 10400},
    {id = 2167, chance = 910},
    {id = 2168, chance = 1000},
    {id = 7158, chance = 1340},
    {id = 7159, chance = 1590}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -125},
    {name = "drown", interval = 2000, chance = 15, minDamage = -330, maxDamage = -450, range = 7, radius = 2},
    {name = "icicle", interval = 2000, chance = 20, minDamage = -170, maxDamage = -210, range = 7},
    {name = "poisoncondition", interval = 2000, chance = 20, minDamage = -355, maxDamage = -420, radius = 5}
})

monster:register()
