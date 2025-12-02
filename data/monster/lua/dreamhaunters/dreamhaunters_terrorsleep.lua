-- Terrorsleep
-- Converted from XML

local monster = Game.createMonsterType("Terrorsleep")
if not monster then return end

monster:name("Terrorsleep")
monster:nameDescription("Terrorsleep")
monster:health(7200)
monster:maxHealth(7200)
monster:experience(5900)
monster:speed(270)
monster:race(RACE_BLOOD)
monster:corpseId(22497)
monster:outfit({lookType = 593})
monster:defense(50)
monster:armor(50)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 10},
    {type = COMBAT_DEATHDAMAGE, percent = 5},
    {type = COMBAT_FIREDAMAGE, percent = 5},
    {type = COMBAT_ENERGYDAMAGE, percent = 5},
    {type = COMBAT_ICEDAMAGE, percent = 5},
    {type = COMBAT_HOLYDAMAGE, percent = -10}
})

-- Immunities
monster:immunities({
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Aktat Roshok! Marruk!", yell = false},
    {text = "I will eat you in your sleep.", yell = false},
    {text = "I am the darkness around you...", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 100},
    {id = 2152, chance = 100000, maxCount = 8},
    {id = 2149, chance = 14000},
    {id = 2147, chance = 9600, maxCount = 3},
    {id = 2150, chance = 17000, maxCount = 3},
    {id = 2393, chance = 560},
    {id = 2475, chance = 2820},
    {id = 2476, chance = 4000},
    {id = 5909, chance = 4520},
    {id = 5911, chance = 1130},
    {id = 7590, chance = 36000, maxCount = 2},
    {id = 8473, chance = 26000},
    {id = 9970, chance = 17000, maxCount = 2},
    {id = 18413, chance = 6000},
    {id = 18418, chance = 13000},
    {id = 18419, chance = 17000},
    {id = 22537, chance = 13000},
    {id = 22538, chance = 18000},
    {id = 22363, chance = 1130}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -180},
    {name = "poisoncondition", interval = 2000, chance = 20, minDamage = -1000, maxDamage = -1500, radius = 7},
    {name = "manadrain", interval = 2000, chance = 10, minDamage = -100, maxDamage = -300, radius = 5},
    {name = "feversleep skill reducer", interval = 2000, chance = 10},
    {name = "lifedrain", interval = 2000, chance = 10, minDamage = -350, maxDamage = -500, length = 6},
    {name = "death", interval = 2000, chance = 20, minDamage = -200, maxDamage = -450, radius = 1}
})

monster:register()
