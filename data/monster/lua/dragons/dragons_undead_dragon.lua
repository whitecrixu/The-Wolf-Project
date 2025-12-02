-- Undead Dragon
-- Converted from XML

local monster = Game.createMonsterType("Undead Dragon")
if not monster then return end

monster:name("Undead Dragon")
monster:nameDescription("a undead dragon")
monster:health(8350)
monster:maxHealth(8350)
monster:experience(7200)
monster:speed(250)
monster:race(RACE_UNDEAD)
monster:corpseId(6306)
monster:outfit({lookType = 231})
monster:defense(40)
monster:armor(40)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 5},
    {type = COMBAT_ICEDAMAGE, percent = 50},
    {type = COMBAT_HOLYDAMAGE, percent = -25}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true},
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {type = COMBAT_DEATHDAMAGE, combat = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_DROWN, immunity = true}
})

-- Voices
monster:voices({
    {text = "FEEEED MY ETERNAL HUNGER!", yell = true},
    {text = "I SENSE LIFE", yell = true}
})

-- Loot
monster:loot({
    {id = 2148, chance = 35500, maxCount = 100},
    {id = 2148, chance = 55500, maxCount = 98},
    {id = 6500, chance = 12460},
    {id = 2152, chance = 52000, maxCount = 5},
    {id = 6300, chance = 1150},
    {id = 7591, chance = 21200},
    {id = 2033, chance = 6002},
    {id = 2547, chance = 15190, maxCount = 15},
    {id = 7430, chance = 4000},
    {id = 2476, chance = 5500},
    {id = 2177, chance = 2500},
    {id = 5925, chance = 14180},
    {id = 9971, chance = 570},
    {id = 2498, chance = 1720},
    {id = 2454, chance = 1290},
    {id = 8885, chance = 430},
    {id = 11233, chance = 33380},
    {id = 2146, chance = 28370, maxCount = 2},
    {id = 7368, chance = 26650, maxCount = 5},
    {id = 7402, chance = 860},
    {id = 2144, chance = 22780, maxCount = 2},
    {id = 7590, chance = 21490},
    {id = 11355, chance = 860},
    {id = 2466, chance = 860},
    {id = 8889, chance = 290}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -186},
    {name = "physical", interval = 2000, chance = 5, minDamage = -300, maxDamage = -400, range = 7, radius = 4},
    {name = "death", interval = 2000, chance = 10, minDamage = -125, maxDamage = -600, range = 7},
    {name = "earth", interval = 2000, chance = 5, minDamage = -100, maxDamage = -390, range = 7, radius = 4},
    {name = "earth", interval = 2000, chance = 15, maxDamage = -180, range = 7},
    {name = "earth", interval = 2000, chance = 10, minDamage = -150, maxDamage = -690, length = 8, spread = 3},
    {name = "lifedrain", interval = 2000, chance = 10, minDamage = -300, maxDamage = -700, length = 8, spread = 3},
    {name = "lifedrain", interval = 2000, chance = 10, minDamage = -100, maxDamage = -200, radius = 3},
    {name = "undead dragon curse", interval = 2000, chance = 10}
})

monster:register()
