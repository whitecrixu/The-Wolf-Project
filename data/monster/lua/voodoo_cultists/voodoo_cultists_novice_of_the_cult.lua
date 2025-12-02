-- Novice of the Cult
-- Converted from XML

local monster = Game.createMonsterType("Novice of the Cult")
if not monster then return end

monster:name("Novice of the Cult")
monster:nameDescription("a novice of the cult")
monster:health(285)
monster:maxHealth(285)
monster:experience(100)
monster:speed(200)
monster:race(RACE_BLOOD)
monster:corpseId(20467)
monster:outfit({lookType = 133, lookHead = 114, lookBody = 95, lookLegs = 114, lookFeet = 114})
monster:defense(15)
monster:armor(15)
monster:runHealth(28)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_EARTHDAMAGE, percent = 10},
    {type = COMBAT_ICEDAMAGE, percent = 10},
    {type = COMBAT_HOLYDAMAGE, percent = 10},
    {type = COMBAT_PHYSICALDAMAGE, percent = -10},
    {type = COMBAT_ENERGYDAMAGE, percent = -8},
    {type = COMBAT_FIREDAMAGE, percent = -5},
    {type = COMBAT_DEATHDAMAGE, percent = -8}
})

-- Voices
monster:voices({
    {text = "Fear us!", yell = false},
    {text = "You will not tell anyone what you have seen!", yell = false},
    {text = "Your curiosity will be punished!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 43380, maxCount = 40},
    {id = 12448, chance = 5910},
    {id = 2661, chance = 2900},
    {id = 10556, chance = 1030},
    {id = 6087, chance = 970},
    {id = 1962, chance = 700},
    {id = 5810, chance = 520},
    {id = 2213, chance = 500},
    {id = 2190, chance = 450},
    {id = 2199, chance = 420},
    {id = 2145, chance = 210}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -65},
    {name = "lifedrain", interval = 2000, chance = 15, minDamage = -20, maxDamage = -80, range = 7, radius = 1}
})

monster:register()
