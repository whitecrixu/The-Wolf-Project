-- Elder Wyrm
-- Converted from XML

local monster = Game.createMonsterType("Elder Wyrm")
if not monster then return end

monster:name("Elder Wyrm")
monster:nameDescription("an elder wyrm")
monster:health(2700)
monster:maxHealth(2700)
monster:experience(2500)
monster:speed(260)
monster:race(RACE_BLOOD)
monster:corpseId(21283)
monster:outfit({lookType = 561})
monster:defense(45)
monster:armor(45)
monster:runHealth(270)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 80},
    {type = COMBAT_FIREDAMAGE, percent = 25}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_ENERGY, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {type = COMBAT_LIFEDRAIN, combat = true}
})

-- Voices
monster:voices({
    {text = "GRRR!", yell = false},
    {text = "GROOOOAAAAAAAAR!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 174},
    {id = 2152, chance = 25150, maxCount = 3},
    {id = 10582, chance = 15980},
    {id = 5944, chance = 5980},
    {id = 2672, chance = 32420, maxCount = 2},
    {id = 7898, chance = 310},
    {id = 7588, chance = 17710},
    {id = 8920, chance = 410},
    {id = 8921, chance = 2000},
    {id = 2145, chance = 4000, maxCount = 5},
    {id = 7589, chance = 20930},
    {id = 2455, chance = 9690},
    {id = 7451, chance = 310},
    {id = 7893, chance = 310},
    {id = 8871, chance = 100},
    {id = 7889, chance = 520},
    {id = 7895, chance = 930},
    {id = 10221, chance = 100},
    {id = 7430, chance = 100},
    {id = 8855, chance = 310}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -160},
    {name = "energy", interval = 2000, chance = 15, minDamage = -90, maxDamage = -150, radius = 4},
    {name = "energy", interval = 2000, chance = 20, minDamage = -140, maxDamage = -250, radius = 5},
    {name = "physical", interval = 2000, chance = 10, maxDamage = -180, length = 8},
    {name = "death", interval = 2000, chance = 10, minDamage = -200, maxDamage = -300, length = 5, spread = 2}
})

monster:register()
