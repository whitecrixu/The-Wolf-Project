-- Golden Servant
-- Converted from XML

local monster = Game.createMonsterType("Golden Servant")
if not monster then return end

monster:name("Golden Servant")
monster:nameDescription("a golden servant")
monster:health(550)
monster:maxHealth(550)
monster:experience(450)
monster:speed(205)
monster:race(RACE_ENERGY)
monster:corpseId(13489)
monster:outfit({lookType = 396})
monster:defense(20)
monster:armor(20)
monster:runHealth(55)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_EARTHDAMAGE, percent = 80},
    {type = COMBAT_FIREDAMAGE, percent = 10},
    {type = COMBAT_ICEDAMAGE, percent = 5},
    {type = COMBAT_DEATHDAMAGE, percent = 5}
})

-- Immunities
monster:immunities({
    {type = COMBAT_HOLYDAMAGE, combat = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Error. LOAD 'PROGRAM", yell = false},
    {text = "8,1", yell = false},
    {text = "Remain. Obedient.", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 40000, maxCount = 100},
    {id = 2148, chance = 45000, maxCount = 40},
    {id = 9690, chance = 940},
    {id = 13938, chance = 40},
    {id = 7618, chance = 4930},
    {id = 2466, chance = 10},
    {id = 7620, chance = 4950},
    {id = 2179, chance = 10},
    {id = 13758, chance = 340},
    {id = 8900, chance = 520},
    {id = 2165, chance = 450},
    {id = 2381, chance = 3003},
    {id = 2796, chance = 1450}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -80},
    {name = "energy", interval = 2000, chance = 15, minDamage = -60, maxDamage = -100, radius = 4},
    {name = "energy", interval = 2000, chance = 15, minDamage = -80, maxDamage = -110, radius = 4},
    {name = "energy", interval = 2000, chance = 10, minDamage = -90, maxDamage = -150, length = 5, spread = 2}
})

monster:register()
