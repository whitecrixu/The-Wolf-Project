-- Chakoya Windcaller
-- Converted from XML

local monster = Game.createMonsterType("Chakoya Windcaller")
if not monster then return end

monster:name("Chakoya Windcaller")
monster:nameDescription("a chakoya windcaller")
monster:health(84)
monster:maxHealth(84)
monster:experience(48)
monster:speed(200)
monster:race(RACE_BLOOD)
monster:manaCost(305)
monster:corpseId(7320)
monster:outfit({lookType = 260})
monster:defense(10)
monster:armor(10)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isConvinceable(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = 50},
    {type = COMBAT_HOLYDAMAGE, percent = 20},
    {type = COMBAT_ENERGYDAMAGE, percent = -15},
    {type = COMBAT_DEATHDAMAGE, percent = -10}
})

-- Immunities
monster:immunities({
    {type = COMBAT_ICEDAMAGE, combat = true}
})

-- Voices
monster:voices({
    {text = "Mupi! Si siyoqua jinuma!", yell = false},
    {text = "Siqsiq ji jusipa!", yell = false},
    {text = "Jagura taluka taqua!", yell = false},
    {text = "Quatu nguraka!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 26},
    {id = 2667, chance = 29000, maxCount = 3},
    {id = 2541, chance = 950},
    {id = 7159, chance = 60},
    {id = 7158, chance = 60},
    {id = 2669, chance = 60},
    {id = 2460, chance = 3250}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -32},
    {name = "ice", interval = 2000, chance = 15, minDamage = -16, maxDamage = -32, range = 7},
    {name = "freezecondition", interval = 2000, chance = 10, minDamage = -130, maxDamage = -160, radius = 3},
    {name = "ice", interval = 2000, chance = 10, minDamage = -9, maxDamage = -30, length = 5, spread = 2}
})

monster:register()
