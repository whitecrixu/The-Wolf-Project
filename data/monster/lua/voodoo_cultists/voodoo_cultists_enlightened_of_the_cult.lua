-- Enlightened of the Cult
-- Converted from XML

local monster = Game.createMonsterType("Enlightened of the Cult")
if not monster then return end

monster:name("Enlightened of the Cult")
monster:nameDescription("an enlightened of the cult")
monster:health(700)
monster:maxHealth(700)
monster:experience(500)
monster:speed(210)
monster:race(RACE_BLOOD)
monster:corpseId(20391)
monster:outfit({lookType = 193})
monster:defense(25)
monster:armor(25)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_HOLYDAMAGE, percent = 20},
    {type = COMBAT_ICEDAMAGE, percent = 5},
    {type = COMBAT_PHYSICALDAMAGE, percent = 10},
    {type = COMBAT_ENERGYDAMAGE, percent = -5},
    {type = COMBAT_DEATHDAMAGE, percent = -5}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Praise to my master Urgith!", yell = false},
    {text = "You will rise as my servant!", yell = false},
    {text = "Praise to my masters! Long live the triangle!", yell = false},
    {text = "You will die in the name of the triangle!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 64550, maxCount = 70},
    {id = 10555, chance = 10250},
    {id = 1962, chance = 910},
    {id = 12411, chance = 890},
    {id = 2200, chance = 790},
    {id = 7589, chance = 740},
    {id = 2146, chance = 550},
    {id = 6090, chance = 490},
    {id = 2167, chance = 450},
    {id = 5810, chance = 430},
    {id = 2436, chance = 350},
    {id = 2171, chance = 200},
    {id = 2187, chance = 180},
    {id = 5670, chance = 130},
    {id = 2114, chance = 130},
    {id = 7426, chance = 100},
    {id = 12608, chance = 100},
    {id = 5801, chance = 100},
    {id = 2656, chance = 40}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -100},
    {name = "lifedrain", interval = 2000, chance = 25, minDamage = -70, maxDamage = -185, radius = 1},
    {name = "drunk", interval = 2000, chance = 10, range = 7},
    {name = "speed", interval = 2000, chance = 10, range = 7}
})

monster:register()
