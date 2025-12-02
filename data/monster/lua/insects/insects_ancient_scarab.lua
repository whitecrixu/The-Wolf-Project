-- Ancient Scarab
-- Converted from XML

local monster = Game.createMonsterType("Ancient Scarab")
if not monster then return end

monster:name("Ancient Scarab")
monster:nameDescription("a ancient scarab")
monster:health(1000)
monster:maxHealth(1000)
monster:experience(720)
monster:speed(230)
monster:race(RACE_VENOM)
monster:corpseId(6021)
monster:outfit({lookType = 79})
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
    {type = COMBAT_ENERGYDAMAGE, percent = 20},
    {type = COMBAT_PHYSICALDAMAGE, percent = 10},
    {type = COMBAT_FIREDAMAGE, percent = -20},
    {type = COMBAT_ICEDAMAGE, percent = -5}
})

-- Immunities
monster:immunities({
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 90},
    {id = 2148, chance = 50000, maxCount = 97},
    {id = 2162, chance = 11480},
    {id = 2463, chance = 10300},
    {id = 2159, chance = 7692, maxCount = 2},
    {id = 2149, chance = 4810, maxCount = 3},
    {id = 2150, chance = 5000, maxCount = 4},
    {id = 10548, chance = 3571},
    {id = 2142, chance = 2570},
    {id = 2135, chance = 3410},
    {id = 7903, chance = 490},
    {id = 7588, chance = 660},
    {id = 2440, chance = 420},
    {id = 2540, chance = 480}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -95},
    {name = "poison", interval = 2000, chance = 20, minDamage = -15, maxDamage = -145, range = 7},
    {name = "speed", interval = 2000, chance = 15, range = 7},
    {name = "poisoncondition", interval = 2000, chance = 30, minDamage = -440, maxDamage = -520, radius = 5}
})

monster:register()
