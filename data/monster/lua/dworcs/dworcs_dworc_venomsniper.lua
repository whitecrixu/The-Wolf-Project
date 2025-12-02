-- Dworc Venomsniper
-- Converted from XML

local monster = Game.createMonsterType("Dworc Venomsniper")
if not monster then return end

monster:name("Dworc Venomsniper")
monster:nameDescription("a dworc venomsniper")
monster:health(80)
monster:maxHealth(80)
monster:experience(35)
monster:speed(180)
monster:race(RACE_BLOOD)
monster:corpseId(6059)
monster:outfit({lookType = 216})
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
    {type = COMBAT_HOLYDAMAGE, percent = 20},
    {type = COMBAT_FIREDAMAGE, percent = -15},
    {type = COMBAT_DEATHDAMAGE, percent = -10},
    {type = COMBAT_ICEDAMAGE, percent = -13}
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
    {id = 2148, chance = 75000, maxCount = 13},
    {id = 2229, chance = 1000, maxCount = 2},
    {id = 2467, chance = 10000},
    {id = 2545, chance = 5000, maxCount = 3},
    {id = 2050, chance = 6000},
    {id = 2399, chance = 8000, maxCount = 2},
    {id = 2411, chance = 1500},
    {id = 3967, chance = 510},
    {id = 2172, chance = 110},
    {id = 3983, chance = 100},
    {id = 7732, chance = 200}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -25},
    {name = "poisoncondition", interval = 2000, chance = 15, minDamage = -20, maxDamage = -40, range = 5}
})

monster:register()
