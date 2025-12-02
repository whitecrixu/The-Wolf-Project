-- Quara Hydromancer
-- Converted from XML

local monster = Game.createMonsterType("Quara Hydromancer")
if not monster then return end

monster:name("Quara Hydromancer")
monster:nameDescription("a quara hydromancer")
monster:health(1100)
monster:maxHealth(1100)
monster:experience(800)
monster:speed(250)
monster:race(RACE_BLOOD)
monster:corpseId(6066)
monster:outfit({lookType = 47})
monster:defense(15)
monster:armor(15)

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
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_DROWN, immunity = true},
    {condition = CONDITION_FIRE, immunity = true},
    {type = COMBAT_ICEDAMAGE, combat = true}
})

-- Voices
monster:voices({
    {text = "Qua hah tsh!", yell = false},
    {text = "Teech tsha tshul!", yell = false},
    {text = "Quara tsha Fach!", yell = false},
    {text = "Tssssha Quara!", yell = false},
    {text = "Blubber.", yell = false},
    {text = "Blup.", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 50},
    {id = 2148, chance = 50000, maxCount = 60},
    {id = 12444, chance = 15930},
    {id = 2670, chance = 4545, maxCount = 5},
    {id = 2144, chance = 3150},
    {id = 2143, chance = 5250},
    {id = 2149, chance = 5111, maxCount = 2},
    {id = 2189, chance = 900},
    {id = 7590, chance = 3100},
    {id = 5895, chance = 1280},
    {id = 2214, chance = 1008},
    {id = 2476, chance = 200}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -70},
    {name = "ice", interval = 2000, chance = 10, minDamage = -100, maxDamage = -180, length = 8},
    {name = "ice", interval = 2000, chance = 10, minDamage = -90, maxDamage = -150, radius = 3},
    {name = "lifedrain", interval = 2000, chance = 10, minDamage = -170, maxDamage = -240, length = 8},
    {name = "lifedrain", interval = 2000, chance = 15, maxDamage = -170, range = 7},
    {name = "speed", interval = 2000, chance = 15, range = 7}
})

monster:register()
