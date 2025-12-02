-- Gravelord Oshuran
-- Converted from XML

local monster = Game.createMonsterType("Gravelord Oshuran")
if not monster then return end

monster:name("Gravelord Oshuran")
monster:nameDescription("Gravelord Oshuran")
monster:health(3100)
monster:maxHealth(3100)
monster:experience(2400)
monster:speed(220)
monster:race(RACE_UNDEAD)
monster:corpseId(6028)
monster:outfit({lookType = 99, lookHead = 95, lookBody = 116, lookLegs = 119, lookFeet = 115})
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
    {type = COMBAT_ICEDAMAGE, percent = 35},
    {type = COMBAT_FIREDAMAGE, percent = 10},
    {type = COMBAT_ENERGYDAMAGE, percent = 80},
    {type = COMBAT_HOLYDAMAGE, percent = -10}
})

-- Immunities
monster:immunities({
    {type = COMBAT_DEATHDAMAGE, combat = true},
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {type = COMBAT_LIFEDRAIN, combat = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Your mortality is disgusting!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 115},
    {id = 7589, chance = 17500},
    {id = 2144, chance = 15960},
    {id = 2143, chance = 15000},
    {id = 2214, chance = 15040},
    {id = 2656, chance = 500},
    {id = 7893, chance = 900},
    {id = 8904, chance = 300},
    {id = 2175, chance = 4650}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -250},
    {name = "speed", interval = 2000, chance = 25, range = 7},
    {name = "lifedrain", interval = 2000, chance = 10, minDamage = -180, maxDamage = -300, length = 7},
    {name = "earth", interval = 2000, chance = 10, minDamage = -100, maxDamage = -350, length = 7},
    {name = "lifedrain", interval = 2000, chance = 10, minDamage = -200, maxDamage = -245}
})

monster:register()
