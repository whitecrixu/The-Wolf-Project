-- True Midnight Asura
-- Converted from WolfOTS

local monster = Game.createMonsterType("True Midnight Asura")
if not monster then return end

monster:name("True Midnight Asura")
monster:nameDescription("a true midnight asura")
monster:health(9000)
monster:maxHealth(9000)
monster:experience(7313)
monster:speed(170)
monster:race(RACE_BLOOD)
monster:corpseId(28617)
monster:outfit({lookType = 1068, lookHead = 0, lookBody = 76, lookLegs = 53, lookFeet = 0})
monster:defense(55)
monster:armor(75)

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
    {name = "violet gem", chance = 1390},
    {name = "crystal coin", chance = 5760},
    {name = "royal star", chance = 4090, maxCount = 3},
    {id = 3035, chance = 100000, maxCount = 8},
    {id = 7368, chance = 9210, maxCount = 5},
    {id = 3027, chance = 9870, maxCount = 2},
    {id = 6558, chance = 20540},
    {id = 6499, chance = 10730},
    {id = 3028, chance = 15630, maxCount = 2},
    {id = 3032, chance = 7750, maxCount = 2},
    {id = 3030, chance = 7830, maxCount = 2},
    {id = 3029, chance = 12690, maxCount = 2},
    {id = 9057, chance = 8120, maxCount = 2},
    {id = 239, chance = 19960, maxCount = 2},
    {id = 3026, chance = 8170, maxCount = 2},
    {id = 7404, chance = 980},
    {id = 3041, chance = 1020},
    {id = 3567, chance = 900},
    {id = 9058, chance = 900},
    {id = 21974, chance = 12440},
    {id = 3069, chance = 3610},
    {id = 21981, chance = 1820},
    {id = 21975, chance = 12790},
    {id = 8061, chance = 930},
    {id = 3017, chance = 10060},
    {id = 3054, chance = 2020},
    {id = 5944, chance = 10020},
    {id = 8074, chance = 900},
    {id = 3403, chance = 2290},
    {id = 8082, chance = 990},
    {id = 3037, chance = 900},
    {id = 3007, chance = 930},
    {name = "small enchanted amethyst", chance = 1441, maxCount = 3}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -450},
    {name = "combat", interval = 2000, chance = 20, type = COMBAT_DEATHDAMAGE, minDamage = -500, maxDamage = -650, range = 5, effect = CONST_ME_MORTAREA},
    {name = "combat", interval = 2000, chance = 10, type = COMBAT_MANADRAIN, minDamage = -50, maxDamage = -280, range = 7},
    {name = "combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -100, maxDamage = -240, effect = CONST_ME_PURPLEENERGY},
    {name = "combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -500, maxDamage = -700, effect = CONST_ME_BLACKSMOKE},
    {name = "speed", interval = 2000, chance = 15, effect = CONST_ME_MAGIC_RED}
})

monster:register()
