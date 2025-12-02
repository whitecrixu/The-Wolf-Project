-- Bonelord
-- Converted from XML

local monster = Game.createMonsterType("Bonelord")
if not monster then return end

monster:name("Bonelord")
monster:nameDescription("a bonelord")
monster:health(260)
monster:maxHealth(260)
monster:experience(170)
monster:speed(170)
monster:race(RACE_VENOM)
monster:corpseId(5992)
monster:outfit({lookType = 17})
monster:defense(10)
monster:armor(10)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ICEDAMAGE, percent = 20},
    {type = COMBAT_FIREDAMAGE, percent = -10}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true},
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {type = COMBAT_LIFEDRAIN, combat = true}
})

-- Voices
monster:voices({
    {text = "Eye for eye!", yell = false},
    {text = "Here's looking at you!", yell = false},
    {text = "Let me take a look at you!", yell = false},
    {text = "You've got the look!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 65000, maxCount = 48},
    {id = 2397, chance = 8980},
    {id = 2394, chance = 6950},
    {id = 2175, chance = 4650},
    {id = 2509, chance = 4001},
    {id = 2377, chance = 3840},
    {id = 5898, chance = 940},
    {id = 7620, chance = 280},
    {id = 2181, chance = 570},
    {id = 12468, chance = 4940},
    {id = 2518, chance = 80}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -15},
    {name = "energy", interval = 2000, chance = 5, minDamage = -15, maxDamage = -45, range = 7},
    {name = "fire", interval = 2000, chance = 5, minDamage = -25, maxDamage = -45, range = 7},
    {name = "death", interval = 2000, chance = 5, minDamage = -30, maxDamage = -50, range = 7},
    {name = "poison", interval = 2000, chance = 5, minDamage = -5, maxDamage = -45, range = 7},
    {name = "death", interval = 2000, chance = 5, minDamage = -5, maxDamage = -50, range = 7},
    {name = "lifedrain", interval = 2000, chance = 5, maxDamage = -45, range = 7},
    {name = "manadrain", interval = 2000, chance = 5, minDamage = -5, maxDamage = -35, range = 7}
})

monster:register()
