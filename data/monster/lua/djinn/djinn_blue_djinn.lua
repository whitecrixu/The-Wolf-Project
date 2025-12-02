-- Blue Djinn
-- Converted from XML

local monster = Game.createMonsterType("Blue Djinn")
if not monster then return end

monster:name("Blue Djinn")
monster:nameDescription("a blue djinn")
monster:health(330)
monster:maxHealth(330)
monster:experience(215)
monster:speed(180)
monster:race(RACE_BLOOD)
monster:corpseId(6020)
monster:outfit({lookType = 80})
monster:defense(15)
monster:armor(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = 80},
    {type = COMBAT_ENERGYDAMAGE, percent = 50},
    {type = COMBAT_HOLYDAMAGE, percent = 1},
    {type = COMBAT_ICEDAMAGE, percent = -10},
    {type = COMBAT_DEATHDAMAGE, percent = -12}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Simsalabim", yell = false},
    {text = "Feel the power of my magic, tiny mortal!", yell = false},
    {text = "Be careful what you wish for.", yell = false},
    {text = "Wishes can come true.", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 60000, maxCount = 70},
    {id = 2148, chance = 70000, maxCount = 45},
    {id = 2684, chance = 23480},
    {id = 7378, chance = 4500, maxCount = 2},
    {id = 2146, chance = 2560, maxCount = 4},
    {id = 2063, chance = 690},
    {id = 1963, chance = 2350},
    {id = 5912, chance = 1920},
    {id = 7620, chance = 860},
    {id = 2745, chance = 440},
    {id = 2663, chance = 70},
    {id = 12412, chance = 1890}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -85},
    {name = "fire", interval = 2000, chance = 15, minDamage = -45, maxDamage = -80, range = 7},
    {name = "death", interval = 2000, chance = 10, minDamage = -60, maxDamage = -105, range = 7, radius = 1},
    {name = "drunk", interval = 2000, chance = 10, range = 7},
    {name = "outfit", interval = 2000, chance = 1, range = 7},
    {name = "djinn electrify", interval = 2000, chance = 15, range = 5},
    {name = "djinn cancel invisibility", interval = 2000, chance = 10}
})

monster:register()
