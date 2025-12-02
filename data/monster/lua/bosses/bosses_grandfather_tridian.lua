-- Grandfather Tridian
-- Converted from XML

local monster = Game.createMonsterType("Grandfather Tridian")
if not monster then return end

monster:name("Grandfather Tridian")
monster:nameDescription("Grandfather Tridian")
monster:health(1800)
monster:maxHealth(1800)
monster:experience(1400)
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
    {type = COMBAT_PHYSICALDAMAGE, percent = 35}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "I will bring peace to your misguided soul!", yell = false},
    {text = "Your intrusion can't be tolerated!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 80},
    {id = 2114, chance = 100000},
    {id = 7589, chance = 5000},
    {id = 2789, chance = 5000},
    {id = 2187, chance = 5000},
    {id = 2436, chance = 5000},
    {id = 8922, chance = 5000},
    {id = 7426, chance = 3000},
    {id = 6087, chance = 3000},
    {id = 6088, chance = 3000},
    {id = 6089, chance = 3000},
    {id = 6090, chance = 3000},
    {id = 3955, chance = 1000},
    {id = 10555, chance = 10250},
    {id = 1962, chance = 910},
    {id = 12411, chance = 890},
    {id = 2200, chance = 790},
    {id = 2146, chance = 550},
    {id = 2167, chance = 450},
    {id = 5810, chance = 430},
    {id = 2171, chance = 200},
    {id = 5670, chance = 130},
    {id = 12608, chance = 100},
    {id = 5801, chance = 100},
    {id = 2656, chance = 40}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -100},
    {name = "lifedrain", interval = 2000, chance = 25, minDamage = -138, maxDamage = -362, radius = 1},
    {name = "lifedrain", interval = 2000, chance = 15, maxDamage = -50, radius = 1}
})

monster:register()
