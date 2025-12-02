-- Hemming
-- Converted from XML

local monster = Game.createMonsterType("Hemming")
if not monster then return end

monster:name("Hemming")
monster:nameDescription("Hemming")
monster:health(3000)
monster:maxHealth(3000)
monster:experience(2850)
monster:speed(210)
monster:race(RACE_BLOOD)
monster:corpseId(20570)
monster:outfit({lookType = 308})
monster:defense(40)
monster:armor(40)
monster:runHealth(300)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 30},
    {type = COMBAT_ENERGYDAMAGE, percent = 5},
    {type = COMBAT_EARTHDAMAGE, percent = 65},
    {type = COMBAT_FIREDAMAGE, percent = -5},
    {type = COMBAT_DEATHDAMAGE, percent = 50},
    {type = COMBAT_ICEDAMAGE, percent = -5},
    {type = COMBAT_HOLYDAMAGE, percent = -5}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "GRRR", yell = false},
    {text = "GRROARR", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 99},
    {id = 11234, chance = 100000},
    {id = 5897, chance = 100000},
    {id = 8473, chance = 98000},
    {id = 2789, chance = 94000, maxCount = 5},
    {id = 2152, chance = 94000, maxCount = 10},
    {id = 7439, chance = 82000},
    {id = 2197, chance = 70000},
    {id = 2144, chance = 62000, maxCount = 5},
    {id = 5480, chance = 31000},
    {id = 2805, chance = 21000},
    {id = 11306, chance = 15000},
    {id = 7419, chance = 9800},
    {id = 2169, chance = 6000},
    {id = 7428, chance = 2000}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -450},
    {name = "lifedrain", interval = 2000, chance = 10, minDamage = -180, maxDamage = -265, radius = 3},
    {name = "outfit", interval = 2000, chance = 5},
    {name = "physical", interval = 2000, chance = 40, radius = 3},
    {name = "werewolf skill reducer", interval = 2000, chance = 15}
})

monster:register()
