-- Ribstride
-- Converted from XML

local monster = Game.createMonsterType("Ribstride")
if not monster then return end

monster:name("Ribstride")
monster:nameDescription("Ribstride")
monster:health(1000)
monster:maxHealth(1000)
monster:experience(1100)
monster:speed(210)
monster:race(RACE_UNDEAD)
monster:corpseId(6030)
monster:outfit({lookType = 101})
monster:defense(35)
monster:armor(35)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = -10},
    {type = COMBAT_HOLYDAMAGE, percent = -20}
})

-- Immunities
monster:immunities({
    {type = COMBAT_DEATHDAMAGE, combat = true},
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_DROWN, immunity = true},
    {type = COMBAT_LIFEDRAIN, combat = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Loot
monster:loot({
    {id = 11194, chance = 100000},
    {id = 5925, chance = 98910, maxCount = 3},
    {id = 2152, chance = 98910, maxCount = 8},
    {id = 2145, chance = 61960, maxCount = 4},
    {id = 2541, chance = 60000},
    {id = 2796, chance = 60000, maxCount = 4},
    {id = 11161, chance = 29000},
    {id = 5741, chance = 8700},
    {id = 13291, chance = 2000}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -200},
    {name = "lifedrain", interval = 2000, chance = 10, minDamage = -25, maxDamage = -47, radius = 3},
    {name = "earth", interval = 2000, chance = 15, minDamage = -50, maxDamage = -90, range = 7},
    {name = "poisoncondition", interval = 2000, chance = 10, minDamage = -50, maxDamage = -60, radius = 3},
    {name = "poisoncondition", interval = 2000, chance = 10, minDamage = -70, maxDamage = -80, length = 6},
    {name = "speed", interval = 2000, chance = 15}
})

monster:register()
