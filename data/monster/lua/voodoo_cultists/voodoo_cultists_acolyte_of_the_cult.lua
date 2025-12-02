-- Acolyte of the Cult
-- Converted from XML

local monster = Game.createMonsterType("Acolyte of the Cult")
if not monster then return end

monster:name("Acolyte of the Cult")
monster:nameDescription("an acolyte of the cult")
monster:health(390)
monster:maxHealth(390)
monster:experience(300)
monster:speed(200)
monster:race(RACE_BLOOD)
monster:corpseId(20319)
monster:outfit({lookType = 194, lookHead = 114, lookBody = 121, lookLegs = 121, lookFeet = 57})
monster:defense(15)
monster:armor(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_HOLYDAMAGE, percent = 20},
    {type = COMBAT_EARTHDAMAGE, percent = 20},
    {type = COMBAT_ICEDAMAGE, percent = 20},
    {type = COMBAT_PHYSICALDAMAGE, percent = -10},
    {type = COMBAT_ENERGYDAMAGE, percent = -10},
    {type = COMBAT_DEATHDAMAGE, percent = -5}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Praise the voodoo!", yell = false},
    {text = "Power to the cult!", yell = false},
    {text = "Feel the power of the cult!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 66940, maxCount = 40},
    {id = 12448, chance = 10420},
    {id = 10556, chance = 8070},
    {id = 2394, chance = 4990},
    {id = 5810, chance = 1060},
    {id = 2201, chance = 1050},
    {id = 1962, chance = 730},
    {id = 2168, chance = 560},
    {id = 2149, chance = 550},
    {id = 6088, chance = 480},
    {id = 2181, chance = 250},
    {id = 12608, chance = 60},
    {id = 12411, chance = 40}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -100},
    {name = "lifedrain", interval = 2000, chance = 20, minDamage = -60, maxDamage = -120, range = 7, radius = 1},
    {name = "drunk", interval = 2000, chance = 5, range = 7, radius = 1}
})

monster:register()
