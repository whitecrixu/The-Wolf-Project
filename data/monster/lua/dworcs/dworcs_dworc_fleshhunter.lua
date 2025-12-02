-- Dworc Fleshhunter
-- Converted from XML

local monster = Game.createMonsterType("Dworc Fleshhunter")
if not monster then return end

monster:name("Dworc Fleshhunter")
monster:nameDescription("a dworc fleshhunter")
monster:health(85)
monster:maxHealth(85)
monster:experience(40)
monster:speed(180)
monster:race(RACE_BLOOD)
monster:corpseId(6058)
monster:outfit({lookType = 215})
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
    {type = COMBAT_DEATHDAMAGE, percent = -15},
    {type = COMBAT_FIREDAMAGE, percent = -10},
    {type = COMBAT_ICEDAMAGE, percent = -10}
})

-- Immunities
monster:immunities({
    {type = COMBAT_EARTHDAMAGE, combat = true}
})

-- Voices
monster:voices({
    {text = "Grak brrretz!", yell = false},
    {text = "Grow truk grrrrr.", yell = false},
    {text = "Prek tars, dekklep zurk.", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 69000, maxCount = 13},
    {id = 2229, chance = 3300, maxCount = 3},
    {id = 2568, chance = 9750},
    {id = 2050, chance = 4750},
    {id = 2567, chance = 10000},
    {id = 3967, chance = 500},
    {id = 3965, chance = 2000},
    {id = 2411, chance = 2250},
    {id = 2541, chance = 1000},
    {id = 3964, chance = 90}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -35},
    {name = "physical", interval = 2000, chance = 10, maxDamage = -15, range = 7}
})

monster:register()
