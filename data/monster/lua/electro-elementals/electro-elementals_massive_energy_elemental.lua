-- Massive Energy Elemental
-- Converted from XML

local monster = Game.createMonsterType("Massive Energy Elemental")
if not monster then return end

monster:name("Massive Energy Elemental")
monster:nameDescription("a massive energy elemental")
monster:health(1100)
monster:maxHealth(1100)
monster:experience(950)
monster:speed(210)
monster:race(RACE_ENERGY)
monster:corpseId(8966)
monster:outfit({lookType = 290})
monster:defense(20)
monster:armor(20)
monster:runHealth(110)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 70},
    {type = COMBAT_HOLYDAMAGE, percent = 25},
    {type = COMBAT_DEATHDAMAGE, percent = 1},
    {type = COMBAT_EARTHDAMAGE, percent = -5}
})

-- Immunities
monster:immunities({
    {type = COMBAT_ICEDAMAGE, combat = true},
    {condition = CONDITION_ENERGY, immunity = true},
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true}
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 100},
    {id = 2148, chance = 50000, maxCount = 91},
    {id = 7589, chance = 17450},
    {id = 7638, chance = 6550, maxCount = 15},
    {id = 7590, chance = 5450},
    {id = 9809, chance = 730},
    {id = 2150, chance = 3270, maxCount = 3},
    {id = 8920, chance = 730},
    {id = 7889, chance = 730},
    {id = 8901, chance = 360},
    {id = 7895, chance = 150},
    {id = 7869, chance = 500},
    {id = 10221, chance = 500}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -110},
    {name = "energy", interval = 2000, chance = 10, minDamage = -270, maxDamage = -615, range = 7, radius = 2},
    {name = "energy", interval = 2000, chance = 15, minDamage = -175, maxDamage = -205, range = 7},
    {name = "massive energy elemental electrify", interval = 2000, chance = 20}
})

monster:register()
