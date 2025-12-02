-- Earth Elemental
-- Converted from XML

local monster = Game.createMonsterType("Earth Elemental")
if not monster then return end

monster:name("Earth Elemental")
monster:nameDescription("an earth elemental")
monster:health(650)
monster:maxHealth(650)
monster:experience(450)
monster:speed(220)
monster:race(RACE_UNDEAD)
monster:corpseId(8933)
monster:outfit({lookType = 301})
monster:defense(25)
monster:armor(25)
monster:runHealth(65)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_DEATHDAMAGE, percent = 50},
    {type = COMBAT_ICEDAMAGE, percent = 85},
    {type = COMBAT_PHYSICALDAMAGE, percent = 50},
    {type = COMBAT_HOLYDAMAGE, percent = 50},
    {type = COMBAT_FIREDAMAGE, percent = -25}
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
    {id = 2148, chance = 43000, maxCount = 100},
    {id = 2148, chance = 50000, maxCount = 30},
    {id = 11222, chance = 20460},
    {id = 7850, chance = 20160, maxCount = 30},
    {id = 2260, chance = 10000},
    {id = 7589, chance = 1910},
    {id = 11339, chance = 570},
    {id = 13757, chance = 470},
    {id = 9808, chance = 350},
    {id = 1294, chance = 10000, maxCount = 10},
    {id = 9970, chance = 620}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -85},
    {name = "earth", interval = 2000, chance = 10, minDamage = -72, maxDamage = -105, range = 7},
    {name = "physical", interval = 2000, chance = 10, maxDamage = -100, range = 7, radius = 2},
    {name = "poisoncondition", interval = 2000, chance = 20, minDamage = -200, maxDamage = -260, length = 6},
    {name = "poisoncondition", interval = 2000, chance = 10, minDamage = -100, maxDamage = -140, radius = 5},
    {name = "speed", interval = 2000, chance = 10, range = 5}
})

monster:register()
