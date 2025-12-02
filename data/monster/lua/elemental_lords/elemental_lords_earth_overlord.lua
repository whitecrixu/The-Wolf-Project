-- Earth Overlord
-- Converted from XML

local monster = Game.createMonsterType("Earth Overlord")
if not monster then return end

monster:name("Earth Overlord")
monster:nameDescription("an earth overlord")
monster:health(4000)
monster:maxHealth(4000)
monster:experience(2800)
monster:speed(330)
monster:race(RACE_UNDEAD)
monster:corpseId(8933)
monster:outfit({lookType = 285})
monster:defense(30)
monster:armor(30)
monster:runHealth(400)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_DEATHDAMAGE, percent = 20},
    {type = COMBAT_ICEDAMAGE, percent = 20},
    {type = COMBAT_FIREDAMAGE, percent = -25}
})

-- Immunities
monster:immunities({
    {type = COMBAT_EARTHDAMAGE, combat = true}
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 100},
    {id = 2148, chance = 100000, maxCount = 68},
    {id = 8305, chance = 100000},
    {id = 11222, chance = 33333},
    {id = 2152, chance = 33333, maxCount = 3},
    {id = 11227, chance = 8333},
    {id = 7884, chance = 1923},
    {id = 13757, chance = 552}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -170},
    {name = "earth", interval = 1000, chance = 10, maxDamage = -800, length = 7},
    {name = "earth", interval = 1000, chance = 9, maxDamage = -490, radius = 6},
    {name = "speed", interval = 2000, chance = 20, range = 7}
})

monster:register()
