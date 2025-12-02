-- Mawhawk
-- Converted from XML

local monster = Game.createMonsterType("Mawhawk")
if not monster then return end

monster:name("Mawhawk")
monster:nameDescription("Mawhawk")
monster:health(55000)
monster:maxHealth(55000)
monster:experience(15000)
monster:speed(270)
monster:race(RACE_BLOOD)
monster:corpseId(22629)
monster:outfit({lookType = 595})
monster:defense(55)
monster:armor(55)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ICEDAMAGE, percent = -10},
    {type = COMBAT_FIREDAMAGE, percent = -10}
})

-- Immunities
monster:immunities({
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_ENERGY, immunity = true},
    {type = COMBAT_LIFEDRAIN, combat = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Knorrrr!", yell = false}
})

-- Loot
monster:loot({
    {id = 22396, chance = 30000, maxCount = 2},
    {id = 22532, chance = 30000},
    {id = 22598, chance = 30000, maxCount = 2},
    {id = 2148, chance = 10000, maxCount = 100},
    {id = 2152, chance = 10000, maxCount = 25},
    {id = 2392, chance = 10000},
    {id = 5880, chance = 10000},
    {id = 5895, chance = 10000},
    {id = 5911, chance = 10000},
    {id = 5925, chance = 10000},
    {id = 7404, chance = 10000},
    {id = 7407, chance = 10000},
    {id = 7418, chance = 10000},
    {id = 18414, chance = 10000, maxCount = 3},
    {id = 18415, chance = 10000, maxCount = 3},
    {id = 18416, chance = 10000, maxCount = 5},
    {id = 18418, chance = 10000, maxCount = 5}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -180},
    {name = "earth", interval = 1800, chance = 10, minDamage = -300, maxDamage = -685, length = 7},
    {name = "earth", interval = 2000, chance = 9, minDamage = -250, maxDamage = -590, radius = 6}
})

monster:register()
