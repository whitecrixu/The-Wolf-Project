-- Quara Hydromancer Scout
-- Converted from XML

local monster = Game.createMonsterType("Quara Hydromancer Scout")
if not monster then return end

monster:name("Quara Hydromancer Scout")
monster:nameDescription("a quara hydromancer scout")
monster:health(1100)
monster:maxHealth(1100)
monster:experience(800)
monster:speed(240)
monster:race(RACE_UNDEAD)
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
    {type = COMBAT_ENERGYDAMAGE, percent = -10}
})

-- Immunities
monster:immunities({
    {type = COMBAT_ICEDAMAGE, combat = true},
    {condition = CONDITION_FIRE, immunity = true},
    {type = COMBAT_LIFEDRAIN, combat = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
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
    {id = 2148, chance = 40000, maxCount = 90},
    {id = 2148, chance = 49000, maxCount = 49},
    {id = 12444, chance = 12720},
    {id = 2667, chance = 18930, maxCount = 2},
    {id = 2143, chance = 3850},
    {id = 2144, chance = 2660},
    {id = 2149, chance = 6000, maxCount = 2},
    {id = 2189, chance = 890},
    {id = 5895, chance = 1630},
    {id = 2214, chance = 590},
    {id = 2476, chance = 890},
    {id = 2425, chance = 1180},
    {id = 2670, chance = 8400, maxCount = 4}
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
