-- Orc Leader
-- Converted from XML

local monster = Game.createMonsterType("Orc Leader")
if not monster then return end

monster:name("Orc Leader")
monster:nameDescription("a orc leader")
monster:health(450)
monster:maxHealth(450)
monster:experience(270)
monster:speed(220)
monster:race(RACE_BLOOD)
monster:manaCost(640)
monster:corpseId(6001)
monster:outfit({lookType = 59})
monster:defense(25)
monster:armor(25)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isSummonable(true)
monster:isConvinceable(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 20},
    {type = COMBAT_HOLYDAMAGE, percent = 20},
    {type = COMBAT_EARTHDAMAGE, percent = -10},
    {type = COMBAT_DEATHDAMAGE, percent = -5}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_FIRE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Ulderek futgyr human!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 28000, maxCount = 35},
    {id = 2667, chance = 29400},
    {id = 2410, chance = 9950, maxCount = 4},
    {id = 2419, chance = 1860},
    {id = 2478, chance = 3100},
    {id = 2789, chance = 9650},
    {id = 2463, chance = 1650},
    {id = 2510, chance = 1650},
    {id = 7378, chance = 2400},
    {id = 2207, chance = 3920},
    {id = 2647, chance = 440},
    {id = 2413, chance = 610},
    {id = 2397, chance = 2800},
    {id = 7618, chance = 550},
    {id = 2475, chance = 180},
    {id = 12435, chance = 19510},
    {id = 11113, chance = 1030},
    {id = 12436, chance = 2008}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -114},
    {name = "physical", interval = 2000, chance = 20, maxDamage = -70, range = 7}
})

monster:register()
