-- Midnight Asura
-- Converted from WolfOTS

local monster = Game.createMonsterType("Midnight Asura")
if not monster then return end

monster:name("Midnight Asura")
monster:nameDescription("a midnight asura")
monster:health(3100)
monster:maxHealth(3100)
monster:experience(4100)
monster:speed(120)
monster:race(RACE_BLOOD)
monster:corpseId(21988)
monster:outfit({lookType = 150, lookHead = 0, lookBody = 114, lookLegs = 90, lookFeet = 90})
monster:defense(55)
monster:armor(55)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(80)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = -10},
    {type = COMBAT_EARTHDAMAGE, percent = -10},
    {type = COMBAT_FIREDAMAGE, percent = 10},
    {type = COMBAT_ICEDAMAGE, percent = 10},
    {type = COMBAT_HOLYDAMAGE, percent = 30},
    {type = COMBAT_DEATHDAMAGE, percent = 100}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_OUTFIT, immunity = false},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_BLEEDING, immunity = false}
})

-- Loot
monster:loot({
    {id = 3031, chance = 70980, maxCount = 100},
    {id = 3035, chance = 80500, maxCount = 6},
    {id = 7368, chance = 6640, maxCount = 5},
    {id = 3027, chance = 3670, maxCount = 2},
    {id = 3007, chance = 440},
    {id = 6558, chance = 14110},
    {id = 6499, chance = 9950},
    {id = 3028, chance = 5680, maxCount = 3},
    {id = 3032, chance = 3240},
    {id = 3030, chance = 3090},
    {id = 3029, chance = 5550, maxCount = 3},
    {id = 9057, chance = 2910},
    {id = 239, chance = 8450, maxCount = 2},
    {id = 3026, chance = 5660},
    {id = 7404, chance = 350},
    {id = 3041, chance = 290},
    {id = 3567, chance = 530},
    {id = 9058, chance = 140},
    {id = 21974, chance = 12700},
    {id = 3069, chance = 2460},
    {id = 21981, chance = 390},
    {id = 21975, chance = 10740},
    {id = 8061, chance = 180},
    {id = 3017, chance = 3650},
    {id = 3054, chance = 1050},
    {id = 5944, chance = 14580},
    {id = 8074, chance = 150},
    {id = 3403, chance = 2030},
    {id = 8082, chance = 760},
    {id = 3037, chance = 870}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -387},
    {name = "combat", interval = 3300, chance = 10, type = COMBAT_MANADRAIN, minDamage = 0, maxDamage = -70, range = 7},
    {name = "combat", interval = 3700, chance = 17, type = COMBAT_ENERGYDAMAGE, minDamage = -150, maxDamage = -200, effect = CONST_ME_PURPLEENERGY},
    {name = "combat", interval = 4100, chance = 27, type = COMBAT_DEATHDAMAGE, minDamage = -150, maxDamage = -300, effect = CONST_ME_MORTAREA},
    {name = "combat", interval = 2700, chance = 15, type = COMBAT_DEATHDAMAGE, minDamage = -50, maxDamage = -200, range = 5, shootEffect = CONST_ANI_SUDDENDEATH},
    {name = "combat", interval = 3100, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = -50, maxDamage = -100, range = 1, shootEffect = CONST_ANI_ENERGY},
    {name = "speed", interval = 2000, chance = 20, effect = CONST_ME_SLEEP, shootEffect = CONST_ANI_EXPLOSION}
})

monster:register()
