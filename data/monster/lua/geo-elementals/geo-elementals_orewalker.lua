-- Orewalker
-- Converted from XML

local monster = Game.createMonsterType("Orewalker")
if not monster then return end

monster:name("Orewalker")
monster:nameDescription("an orewalker")
monster:health(7200)
monster:maxHealth(7200)
monster:experience(4800)
monster:speed(250)
monster:race(RACE_UNDEAD)
monster:corpseId(17256)
monster:outfit({lookType = 490})
monster:defense(45)
monster:armor(45)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = -5},
    {type = COMBAT_FIREDAMAGE, percent = 65},
    {type = COMBAT_DEATHDAMAGE, percent = 15},
    {type = COMBAT_PHYSICALDAMAGE, percent = 5},
    {type = COMBAT_ICEDAMAGE, percent = 5}
})

-- Immunities
monster:immunities({
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Sizzle!", yell = false},
    {text = "CLONK!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 100},
    {id = 2148, chance = 50000, maxCount = 98},
    {id = 2152, chance = 100000, maxCount = 10},
    {id = 9970, chance = 16500, maxCount = 3},
    {id = 18435, chance = 15500, maxCount = 5},
    {id = 18418, chance = 16000, maxCount = 2},
    {id = 7589, chance = 14000, maxCount = 2},
    {id = 7590, chance = 14000, maxCount = 2},
    {id = 7620, chance = 14000, maxCount = 4},
    {id = 7588, chance = 15600, maxCount = 2},
    {id = 8473, chance = 9500, maxCount = 2},
    {id = 18419, chance = 13000},
    {id = 11232, chance = 20700},
    {id = 18427, chance = 20500},
    {id = 5880, chance = 15000},
    {id = 18429, chance = 15000},
    {id = 11227, chance = 13700},
    {id = 18415, chance = 8000},
    {id = 2213, chance = 4660},
    {id = 5904, chance = 3000},
    {id = 7413, chance = 2600},
    {id = 7454, chance = 1870},
    {id = 2477, chance = 1910},
    {id = 2154, chance = 1030},
    {id = 18390, chance = 1300},
    {id = 2491, chance = 890},
    {id = 8878, chance = 560},
    {id = 2487, chance = 370},
    {id = 18453, chance = 300}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -145},
    {name = "manadrain", interval = 2000, chance = 15, minDamage = -296, maxDamage = -700, length = 4, spread = 3},
    {name = "physical", interval = 2000, chance = 10, maxDamage = -1500, length = 6},
    {name = "poisoncondition", interval = 2000, chance = 10, minDamage = -800, maxDamage = -1080, radius = 3},
    {name = "drunk", interval = 2000, chance = 15, radius = 4},
    {name = "speed", interval = 2000, chance = 15, radius = 2}
})

monster:register()
