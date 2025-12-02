-- Werewolf
-- Converted from XML

local monster = Game.createMonsterType("Werewolf")
if not monster then return end

monster:name("Werewolf")
monster:nameDescription("a werewolf")
monster:health(1955)
monster:maxHealth(1955)
monster:experience(1900)
monster:speed(200)
monster:race(RACE_BLOOD)
monster:corpseId(20379)
monster:outfit({lookType = 308})
monster:defense(40)
monster:armor(40)
monster:runHealth(195)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 10},
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
    {id = 2148, chance = 99000, maxCount = 225},
    {id = 11234, chance = 10500},
    {id = 2510, chance = 10000},
    {id = 9809, chance = 7770},
    {id = 2789, chance = 7000},
    {id = 7588, chance = 5000},
    {id = 2805, chance = 5000},
    {id = 5897, chance = 4500},
    {id = 2381, chance = 3000},
    {id = 8473, chance = 2000},
    {id = 7439, chance = 1200},
    {id = 2197, chance = 1000},
    {id = 2171, chance = 850},
    {id = 2169, chance = 800},
    {id = 2438, chance = 560},
    {id = 7383, chance = 490},
    {id = 7428, chance = 410},
    {id = 7419, chance = 150}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -350},
    {name = "lifedrain", interval = 2000, chance = 10, minDamage = -80, maxDamage = -165, radius = 3},
    {name = "outfit", interval = 2000, chance = 5},
    {name = "physical", interval = 2000, chance = 40, radius = 3},
    {name = "werewolf skill reducer", interval = 2000, chance = 15}
})

monster:register()
