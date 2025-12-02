-- Dworc Voodoomaster
-- Converted from XML

local monster = Game.createMonsterType("Dworc Voodoomaster")
if not monster then return end

monster:name("Dworc Voodoomaster")
monster:nameDescription("a dworc voodoomaster")
monster:health(80)
monster:maxHealth(80)
monster:experience(55)
monster:speed(190)
monster:race(RACE_BLOOD)
monster:corpseId(6055)
monster:outfit({lookType = 214})
monster:defense(10)
monster:armor(10)
monster:runHealth(8)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isConvinceable(true)
monster:isIllusionable(true)
monster:pushable(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_HOLYDAMAGE, percent = 30},
    {type = COMBAT_FIREDAMAGE, percent = -15},
    {type = COMBAT_DEATHDAMAGE, percent = -10},
    {type = COMBAT_ICEDAMAGE, percent = -10}
})

-- Immunities
monster:immunities({
    {type = COMBAT_EARTHDAMAGE, combat = true}
})

-- Voices
monster:voices({
    {text = "Brak brrretz!", yell = false},
    {text = "Grow truk grrrrr.", yell = false},
    {text = "Prek tars, dekklep zurk.", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 75000, maxCount = 17},
    {id = 2229, chance = 1950, maxCount = 3},
    {id = 2050, chance = 6000},
    {id = 2230, chance = 5800},
    {id = 2467, chance = 10000},
    {id = 2411, chance = 1000},
    {id = 3967, chance = 500},
    {id = 2174, chance = 500},
    {id = 7618, chance = 600},
    {id = 3955, chance = 130},
    {id = 2231, chance = 3000}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -30},
    {name = "lifedrain", interval = 2000, chance = 10, maxDamage = -40},
    {name = "speed", interval = 2000, chance = 10, range = 7},
    {name = "drunk", interval = 2000, chance = 10, range = 7},
    {name = "outfit", interval = 2000, chance = 10, range = 7},
    {name = "poison", interval = 2000, chance = 10, minDamage = -6, maxDamage = -18, radius = 6},
    {name = "poisonfield", interval = 2000, chance = 10, range = 7, radius = 1}
})

monster:register()
