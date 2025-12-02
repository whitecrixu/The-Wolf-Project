-- Bog Raider
-- Converted from XML

local monster = Game.createMonsterType("Bog Raider")
if not monster then return end

monster:name("Bog Raider")
monster:nameDescription("a bog raider")
monster:health(1300)
monster:maxHealth(1300)
monster:experience(800)
monster:speed(240)
monster:race(RACE_VENOM)
monster:corpseId(8951)
monster:outfit({lookType = 299})
monster:defense(15)
monster:armor(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = -10},
    {type = COMBAT_EARTHDAMAGE, percent = 30},
    {type = COMBAT_ICEDAMAGE, percent = -5},
    {type = COMBAT_PHYSICALDAMAGE, percent = -20},
    {type = COMBAT_HOLYDAMAGE, percent = -5},
    {type = COMBAT_DEATHDAMAGE, percent = 5},
    {type = COMBAT_FIREDAMAGE, percent = 85}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Tchhh!", yell = false},
    {text = "Slurp!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 50750, maxCount = 100},
    {id = 2148, chance = 50750, maxCount = 5},
    {id = 10584, chance = 9870},
    {id = 7591, chance = 2000},
    {id = 8912, chance = 1030},
    {id = 8472, chance = 2008},
    {id = 2647, chance = 2040},
    {id = 8473, chance = 740},
    {id = 8872, chance = 590},
    {id = 8891, chance = 110}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -112},
    {name = "lifedrain", interval = 2000, chance = 10, minDamage = -90, maxDamage = -140, range = 7},
    {name = "earth", interval = 2000, chance = 10, minDamage = -100, maxDamage = -175, radius = 3},
    {name = "earth", interval = 2000, chance = 15, minDamage = -96, maxDamage = -110, range = 7},
    {name = "speed", interval = 2000, chance = 15, range = 7}
})

monster:register()
