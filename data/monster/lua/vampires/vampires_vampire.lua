-- Vampire
-- Converted from XML

local monster = Game.createMonsterType("Vampire")
if not monster then return end

monster:name("Vampire")
monster:nameDescription("a vampire")
monster:health(475)
monster:maxHealth(475)
monster:experience(305)
monster:speed(220)
monster:race(RACE_BLOOD)
monster:corpseId(6006)
monster:outfit({lookType = 68})
monster:defense(30)
monster:armor(30)
monster:runHealth(47)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 35},
    {type = COMBAT_FIREDAMAGE, percent = -10},
    {type = COMBAT_HOLYDAMAGE, percent = -25}
})

-- Immunities
monster:immunities({
    {type = COMBAT_LIFEDRAIN, combat = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {type = COMBAT_DEATHDAMAGE, combat = true},
    {condition = CONDITION_DROWN, immunity = true}
})

-- Voices
monster:voices({
    {text = "BLOOD!", yell = true},
    {text = "Let me kiss your neck", yell = false},
    {text = "I smell warm blood!", yell = false},
    {text = "I call you, my bats! Come!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 90230, maxCount = 60},
    {id = 10602, chance = 7600},
    {id = 12405, chance = 5100},
    {id = 2747, chance = 1910},
    {id = 2144, chance = 1800},
    {id = 2412, chance = 1560},
    {id = 7588, chance = 1500},
    {id = 2383, chance = 1000},
    {id = 2229, chance = 1000},
    {id = 2396, chance = 420},
    {id = 2479, chance = 420},
    {id = 2127, chance = 230},
    {id = 2534, chance = 230},
    {id = 2172, chance = 220}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -150},
    {name = "lifedrain", interval = 2000, chance = 20, minDamage = -50, maxDamage = -200},
    {name = "speed", interval = 2000, chance = 15}
})

monster:register()
