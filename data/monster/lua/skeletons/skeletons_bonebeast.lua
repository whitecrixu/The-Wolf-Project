-- Bonebeast
-- Converted from XML

local monster = Game.createMonsterType("Bonebeast")
if not monster then return end

monster:name("Bonebeast")
monster:nameDescription("a bonebeast")
monster:health(515)
monster:maxHealth(515)
monster:experience(580)
monster:speed(210)
monster:race(RACE_UNDEAD)
monster:corpseId(6030)
monster:outfit({lookType = 101})
monster:defense(30)
monster:armor(30)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = -10},
    {type = COMBAT_HOLYDAMAGE, percent = -20}
})

-- Immunities
monster:immunities({
    {type = COMBAT_DEATHDAMAGE, combat = true},
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_DROWN, immunity = true},
    {type = COMBAT_LIFEDRAIN, combat = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true}
})

-- Voices
monster:voices({
    {text = "Cccchhhhhhhhh!", yell = false},
    {text = "Knooorrrrr!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 14000, maxCount = 50},
    {id = 2148, chance = 16000, maxCount = 40},
    {id = 5925, chance = 960},
    {id = 2230, chance = 47750},
    {id = 2449, chance = 4950},
    {id = 2541, chance = 2000},
    {id = 2796, chance = 1350},
    {id = 2463, chance = 8000},
    {id = 7618, chance = 540},
    {id = 2229, chance = 20000},
    {id = 11194, chance = 9780},
    {id = 11161, chance = 120}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -120},
    {name = "earth", interval = 2000, chance = 15, minDamage = -50, maxDamage = -90, range = 7},
    {name = "lifedrain", interval = 2000, chance = 10, minDamage = -25, maxDamage = -47, radius = 3},
    {name = "poisoncondition", interval = 2000, chance = 10, minDamage = -50, maxDamage = -60, radius = 3},
    {name = "poisoncondition", interval = 2000, chance = 10, minDamage = -70, maxDamage = -80, length = 6},
    {name = "speed", interval = 2000, chance = 15}
})

monster:register()
