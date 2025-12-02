-- Stampor
-- Converted from XML

local monster = Game.createMonsterType("Stampor")
if not monster then return end

monster:name("Stampor")
monster:nameDescription("a stampor")
monster:health(1200)
monster:maxHealth(1200)
monster:experience(780)
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
    {text = "KRRRRRNG", yell = true}
})

-- Loot
monster:loot({
    {id = 2148, chance = 30000, maxCount = 242},
    {id = 13300, chance = 9950, maxCount = 2},
    {id = 2152, chance = 9920, maxCount = 2},
    {id = 9970, chance = 7940, maxCount = 2},
    {id = 7589, chance = 5000, maxCount = 2},
    {id = 7588, chance = 5000, maxCount = 2},
    {id = 13299, chance = 4920},
    {id = 13301, chance = 3020},
    {id = 2391, chance = 1010},
    {id = 2476, chance = 870},
    {id = 7452, chance = 160}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -130},
    {name = "physical", interval = 2000, chance = 15, minDamage = -150, maxDamage = -280, radius = 3},
    {name = "lifedrain", interval = 2000, chance = 15, minDamage = -75, maxDamage = -100},
    {name = "stampor skill reducer", interval = 2000, chance = 10, range = 5}
})

monster:register()
