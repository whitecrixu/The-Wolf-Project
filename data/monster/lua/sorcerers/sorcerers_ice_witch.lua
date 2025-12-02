-- Ice Witch
-- Converted from XML

local monster = Game.createMonsterType("Ice Witch")
if not monster then return end

monster:name("Ice Witch")
monster:nameDescription("an ice witch")
monster:health(650)
monster:maxHealth(650)
monster:experience(580)
monster:speed(200)
monster:race(RACE_BLOOD)
monster:corpseId(20423)
monster:outfit({lookType = 149, lookBody = 47, lookLegs = 105, lookFeet = 105})
monster:defense(20)
monster:armor(20)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = 50},
    {type = COMBAT_EARTHDAMAGE, percent = 40},
    {type = COMBAT_HOLYDAMAGE, percent = 30},
    {type = COMBAT_ENERGYDAMAGE, percent = -10},
    {type = COMBAT_DEATHDAMAGE, percent = -10}
})

-- Immunities
monster:immunities({
    {type = COMBAT_ICEDAMAGE, combat = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "So you think you are cool?", yell = false},
    {text = "I hope it is not too cold for you! HeHeHe.", yell = false},
    {text = "Freeze!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 29630, maxCount = 90},
    {id = 7441, chance = 10000},
    {id = 2796, chance = 1310},
    {id = 7892, chance = 280},
    {id = 7387, chance = 330},
    {id = 7449, chance = 400},
    {id = 7290, chance = 530},
    {id = 2423, chance = 920},
    {id = 7589, chance = 820},
    {id = 2663, chance = 430},
    {id = 7459, chance = 90}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -60},
    {name = "outfit", interval = 2000, chance = 1, range = 7},
    {name = "ice", interval = 2000, chance = 10, minDamage = -60, maxDamage = -130, length = 5, spread = 2},
    {name = "ice", interval = 2000, chance = 20, minDamage = -55, maxDamage = -115, range = 7},
    {name = "speed", interval = 2000, chance = 15, range = 7}
})

monster:register()
