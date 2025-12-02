-- Massive Earth Elemental
-- Converted from XML

local monster = Game.createMonsterType("Massive Earth Elemental")
if not monster then return end

monster:name("Massive Earth Elemental")
monster:nameDescription("a massive earth elemental")
monster:health(1330)
monster:maxHealth(1330)
monster:experience(950)
monster:speed(240)
monster:race(RACE_UNDEAD)
monster:corpseId(8933)
monster:outfit({lookType = 285})
monster:defense(35)
monster:armor(35)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_DEATHDAMAGE, percent = 45},
    {type = COMBAT_ENERGYDAMAGE, percent = 90},
    {type = COMBAT_PHYSICALDAMAGE, percent = 30},
    {type = COMBAT_HOLYDAMAGE, percent = 50},
    {type = COMBAT_FIREDAMAGE, percent = -15}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_ENERGY, immunity = true}
})

-- Loot
monster:loot({
    {id = 2148, chance = 32000, maxCount = 100},
    {id = 2148, chance = 32000, maxCount = 100},
    {id = 2148, chance = 32000, maxCount = 41},
    {id = 1294, chance = 25280, maxCount = 10},
    {id = 2200, chance = 1580},
    {id = 9809, chance = 3300},
    {id = 2213, chance = 2790},
    {id = 9970, chance = 5280, maxCount = 2},
    {id = 2197, chance = 980},
    {id = 7887, chance = 500},
    {id = 7387, chance = 150},
    {id = 11222, chance = 40680},
    {id = 11339, chance = 480},
    {id = 13757, chance = 430}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -85},
    {name = "earth", interval = 2000, chance = 10, minDamage = -99, maxDamage = -145, range = 7},
    {name = "physical", interval = 2000, chance = 10, minDamage = -95, maxDamage = -169, range = 7, radius = 2},
    {name = "poisoncondition", interval = 2000, chance = 15, minDamage = -300, maxDamage = -320, length = 6},
    {name = "poisoncondition", interval = 2000, chance = 10, minDamage = -200, maxDamage = -220, radius = 5},
    {name = "speed", interval = 2000, chance = 20, range = 5}
})

monster:register()
