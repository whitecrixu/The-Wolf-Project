-- Mummy
-- Converted from XML

local monster = Game.createMonsterType("Mummy")
if not monster then return end

monster:name("Mummy")
monster:nameDescription("a mummy")
monster:health(240)
monster:maxHealth(240)
monster:experience(150)
monster:speed(150)
monster:race(RACE_UNDEAD)
monster:corpseId(6004)
monster:outfit({lookType = 65})
monster:defense(15)
monster:armor(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ICEDAMAGE, percent = 20},
    {type = COMBAT_HOLYDAMAGE, percent = -25}
})

-- Immunities
monster:immunities({
    {type = COMBAT_DEATHDAMAGE, combat = true},
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_DROWN, immunity = true},
    {type = COMBAT_LIFEDRAIN, combat = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "I will ssswallow your sssoul!", yell = false},
    {text = "Mort ulhegh dakh visss.", yell = false},
    {text = "Flesssh to dussst!", yell = false},
    {text = "I will tassste life again!", yell = false},
    {text = "Ahkahra exura belil mort!", yell = false},
    {text = "Yohag Sssetham!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 38000, maxCount = 80},
    {id = 3976, chance = 19000, maxCount = 3},
    {id = 12422, chance = 11690},
    {id = 10566, chance = 10000},
    {id = 2162, chance = 5800},
    {id = 2161, chance = 5000},
    {id = 2134, chance = 4000},
    {id = 2124, chance = 1500},
    {id = 2144, chance = 1000},
    {id = 5914, chance = 900},
    {id = 2411, chance = 450},
    {id = 2529, chance = 170},
    {id = 2170, chance = 100},
    {id = 11207, chance = 10}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -85},
    {name = "death", interval = 2000, chance = 20, minDamage = -30, maxDamage = -40},
    {name = "speed", interval = 2000, chance = 15, range = 7}
})

monster:register()
