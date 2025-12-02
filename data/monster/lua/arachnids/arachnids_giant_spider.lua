-- Giant Spider
-- Converted from XML

local monster = Game.createMonsterType("Giant Spider")
if not monster then return end

monster:name("Giant Spider")
monster:nameDescription("a giant spider")
monster:health(1300)
monster:maxHealth(1300)
monster:experience(900)
monster:speed(230)
monster:race(RACE_VENOM)
monster:corpseId(5977)
monster:outfit({lookType = 38})
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
    {type = COMBAT_ENERGYDAMAGE, percent = 20},
    {type = COMBAT_ICEDAMAGE, percent = 20},
    {type = COMBAT_FIREDAMAGE, percent = -10}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {type = COMBAT_EARTHDAMAGE, combat = true}
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 100},
    {id = 2148, chance = 50000, maxCount = 95},
    {id = 2545, chance = 12500, maxCount = 12},
    {id = 2647, chance = 8333},
    {id = 2463, chance = 8333},
    {id = 2377, chance = 5000},
    {id = 2457, chance = 4545},
    {id = 7588, chance = 3571},
    {id = 5879, chance = 2140},
    {id = 2477, chance = 870},
    {id = 2169, chance = 710},
    {id = 2171, chance = 280},
    {id = 2476, chance = 530},
    {id = 7901, chance = 220}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -300},
    {name = "poisonfield", interval = 2000, chance = 10, range = 7, radius = 1},
    {name = "earth", interval = 2000, chance = 10, minDamage = -40, maxDamage = -70, range = 7, radius = 1}
})

monster:register()
