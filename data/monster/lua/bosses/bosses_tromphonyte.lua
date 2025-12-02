-- Tromphonyte
-- Converted from XML

local monster = Game.createMonsterType("Tromphonyte")
if not monster then return end

monster:name("Tromphonyte")
monster:nameDescription("Tromphonyte")
monster:health(3000)
monster:maxHealth(3000)
monster:experience(1300)
monster:speed(240)
monster:race(RACE_BLOOD)
monster:corpseId(13312)
monster:outfit({lookType = 381})
monster:defense(0)
monster:armor(0)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_HOLYDAMAGE, percent = 50},
    {type = COMBAT_DEATHDAMAGE, percent = 10},
    {type = COMBAT_FIREDAMAGE, percent = 20},
    {type = COMBAT_ENERGYDAMAGE, percent = 20},
    {type = COMBAT_ICEDAMAGE, percent = 10}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "HRRRRRNG", yell = true}
})

-- Loot
monster:loot({
    {id = 13301, chance = 100000},
    {id = 2476, chance = 100000},
    {id = 2152, chance = 100000, maxCount = 13},
    {id = 9970, chance = 100000, maxCount = 5},
    {id = 13299, chance = 100000},
    {id = 13300, chance = 100000, maxCount = 2},
    {id = 7588, chance = 100000, maxCount = 2},
    {id = 7589, chance = 100000, maxCount = 2},
    {id = 7452, chance = 50000}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -215},
    {name = "physical", interval = 2000, chance = 15, minDamage = -170, maxDamage = -300, radius = 3},
    {name = "lifedrain", interval = 2000, chance = 15, minDamage = -90, maxDamage = -130},
    {name = "stampor skill reducer", interval = 2000, chance = 10, range = 5}
})

monster:register()
