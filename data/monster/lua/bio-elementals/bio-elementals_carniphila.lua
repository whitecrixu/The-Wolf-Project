-- Carniphila
-- Converted from XML

local monster = Game.createMonsterType("Carniphila")
if not monster then return end

monster:name("Carniphila")
monster:nameDescription("a carniphila")
monster:health(255)
monster:maxHealth(255)
monster:experience(150)
monster:speed(170)
monster:race(RACE_VENOM)
monster:corpseId(6047)
monster:outfit({lookType = 120})
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
    {type = COMBAT_ENERGYDAMAGE, percent = 10},
    {type = COMBAT_ICEDAMAGE, percent = 35},
    {type = COMBAT_FIREDAMAGE, percent = -20}
})

-- Immunities
monster:immunities({
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Loot
monster:loot({
    {id = 2148, chance = 60000, maxCount = 40},
    {id = 2792, chance = 7692},
    {id = 11217, chance = 4166},
    {id = 2804, chance = 880},
    {id = 2686, chance = 890},
    {id = 7732, chance = 490},
    {id = 2802, chance = 446, maxCount = 2},
    {id = 13298, chance = 170}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -80},
    {name = "earth", interval = 2000, chance = 15, minDamage = -60, maxDamage = -95, range = 7},
    {name = "speed", interval = 2000, chance = 15, range = 7},
    {name = "earth", interval = 2000, chance = 10, minDamage = -40, maxDamage = -130, radius = 3}
})

monster:register()
