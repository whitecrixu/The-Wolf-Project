-- Deathbine
-- Converted from XML

local monster = Game.createMonsterType("Deathbine")
if not monster then return end

monster:name("Deathbine")
monster:nameDescription("a deathbine")
monster:health(525)
monster:maxHealth(525)
monster:experience(340)
monster:speed(240)
monster:race(RACE_VENOM)
monster:corpseId(6047)
monster:outfit({lookType = 120})
monster:defense(10)
monster:armor(26)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ICEDAMAGE, percent = 35},
    {type = COMBAT_ENERGYDAMAGE, percent = 10},
    {type = COMBAT_FIREDAMAGE, percent = -20}
})

-- Immunities
monster:immunities({
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Loot
monster:loot({
    {id = 11217, chance = 100000},
    {id = 2152, chance = 100000, maxCount = 5},
    {id = 2804, chance = 100000},
    {id = 2149, chance = 100000, maxCount = 4},
    {id = 2792, chance = 50000},
    {id = 7732, chance = 50000},
    {id = 7887, chance = 50000},
    {id = 7886, chance = 50000},
    {id = 8912, chance = 50000},
    {id = 5015, chance = 5555},
    {id = 13307, chance = 2854}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -130},
    {name = "poison", interval = 1000, chance = 25, minDamage = -60, maxDamage = -90, range = 7},
    {name = "speed", interval = 1000, chance = 34, range = 7},
    {name = "poison", interval = 1000, chance = 12, minDamage = -40, maxDamage = -130, radius = 3}
})

monster:register()
