-- Quara Predator
-- Converted from XML

local monster = Game.createMonsterType("Quara Predator")
if not monster then return end

monster:name("Quara Predator")
monster:nameDescription("a quara predator")
monster:health(2200)
monster:maxHealth(2200)
monster:experience(1600)
monster:speed(280)
monster:race(RACE_BLOOD)
monster:corpseId(6067)
monster:outfit({lookType = 20})
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
    {type = COMBAT_EARTHDAMAGE, percent = -10},
    {type = COMBAT_ENERGYDAMAGE, percent = -25}
})

-- Immunities
monster:immunities({
    {type = COMBAT_LIFEDRAIN, combat = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_DROWN, immunity = true},
    {condition = CONDITION_FIRE, immunity = true},
    {type = COMBAT_ICEDAMAGE, combat = true}
})

-- Voices
monster:voices({
    {text = "Rrrah!", yell = false},
    {text = "Rraaar!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 28000, maxCount = 100},
    {id = 2148, chance = 50000, maxCount = 53},
    {id = 12447, chance = 9090},
    {id = 7378, chance = 9000, maxCount = 7},
    {id = 2145, chance = 5160, maxCount = 2},
    {id = 2670, chance = 4860, maxCount = 5},
    {id = 2387, chance = 3171},
    {id = 5895, chance = 1940, maxCount = 2},
    {id = 7591, chance = 1000},
    {id = 7368, chance = 590},
    {id = 7383, chance = 680},
    {id = 7897, chance = 420},
    {id = 5741, chance = 400},
    {id = 13305, chance = 10}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -185}
})

monster:register()
