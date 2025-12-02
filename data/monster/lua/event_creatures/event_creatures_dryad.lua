-- Dryad
-- Converted from XML

local monster = Game.createMonsterType("Dryad")
if not monster then return end

monster:name("Dryad")
monster:nameDescription("a dryad")
monster:health(310)
monster:maxHealth(310)
monster:experience(190)
monster:speed(210)
monster:race(RACE_BLOOD)
monster:corpseId(20387)
monster:outfit({lookType = 137, lookHead = 80, lookBody = 101, lookLegs = 6, lookFeet = 100, lookAddons = 3})
monster:defense(50)
monster:armor(50)
monster:runHealth(31)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 30},
    {type = COMBAT_ICEDAMAGE, percent = 1},
    {type = COMBAT_PHYSICALDAMAGE, percent = -10},
    {type = COMBAT_FIREDAMAGE, percent = -20}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true},
    {type = COMBAT_EARTHDAMAGE, combat = true}
})

-- Voices
monster:voices({
    {text = "Feel the wrath of mother World!", yell = false},
    {text = "Defiler of nature!", yell = false}
})

-- Loot
monster:loot({
    {id = 2787, chance = 55000, maxCount = 2},
    {id = 2148, chance = 40000, maxCount = 30},
    {id = 7732, chance = 11000, maxCount = 3},
    {id = 9928, chance = 1280},
    {id = 9931, chance = 1200},
    {id = 9929, chance = 1100},
    {id = 9927, chance = 970},
    {id = 2790, chance = 780, maxCount = 2},
    {id = 13298, chance = 210},
    {id = 2150, chance = 130}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -90},
    {name = "earth", interval = 2500, chance = 9, minDamage = -20, maxDamage = -30, radius = 4},
    {name = "speed", interval = 1000, chance = 6, range = 7, radius = 7},
    {name = "drunk", interval = 1000, chance = 12, range = 7}
})

monster:register()
