-- Priestess
-- Converted from XML

local monster = Game.createMonsterType("Priestess")
if not monster then return end

monster:name("Priestess")
monster:nameDescription("a priestess")
monster:health(390)
monster:maxHealth(390)
monster:experience(420)
monster:speed(200)
monster:race(RACE_BLOOD)
monster:corpseId(20491)
monster:outfit({lookType = 58})
monster:defense(15)
monster:armor(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = 40},
    {type = COMBAT_EARTHDAMAGE, percent = 70},
    {type = COMBAT_DEATHDAMAGE, percent = 5},
    {type = COMBAT_PHYSICALDAMAGE, percent = -5},
    {type = COMBAT_HOLYDAMAGE, percent = -10}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Your energy is mine.", yell = false},
    {text = "Now, your life has come to an end, hahahha!", yell = false},
    {text = "Throw the soul on the altar!", yell = false}
})

-- Loot
monster:loot({
    {id = 2529, chance = 210},
    {id = 1962, chance = 890},
    {id = 2423, chance = 1500},
    {id = 2192, chance = 1250},
    {id = 2125, chance = 640},
    {id = 2760, chance = 11720},
    {id = 2183, chance = 1100},
    {id = 7620, chance = 850},
    {id = 2803, chance = 5900},
    {id = 2674, chance = 7500, maxCount = 2},
    {id = 2802, chance = 13200},
    {id = 2151, chance = 750},
    {id = 2791, chance = 3240},
    {id = 2070, chance = 1410},
    {id = 2114, chance = 90},
    {id = 11220, chance = 9840},
    {id = 10556, chance = 1800},
    {id = 10562, chance = 5230},
    {id = 2374, chance = 1400}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -85},
    {name = "death", interval = 2000, chance = 20, minDamage = -55, maxDamage = -120, range = 7},
    {name = "manadrain", interval = 2000, chance = 15, minDamage = -2, maxDamage = -170, range = 7},
    {name = "poisoncondition", interval = 2000, chance = 15, minDamage = -200, range = 7}
})

monster:register()
