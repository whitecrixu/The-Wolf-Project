-- True Frost Flower Asura
-- Converted from WolfOTS

local monster = Game.createMonsterType("True Frost Flower Asura")
if not monster then return end

monster:name("True Frost Flower Asura")
monster:nameDescription("a true frost flower asura")
monster:health(4000)
monster:maxHealth(4000)
monster:experience(7069)
monster:speed(150)
monster:race(RACE_BLOOD)
monster:corpseId(28667)
monster:outfit({lookType = 1068, lookHead = 9, lookBody = 0, lookLegs = 86, lookFeet = 9})
monster:defense(55)
monster:armor(72)

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
    {type = COMBAT_FIREDAMAGE, percent = -10},
    {type = COMBAT_ICEDAMAGE, percent = 100},
    {type = COMBAT_HOLYDAMAGE, percent = 30},
    {type = COMBAT_DEATHDAMAGE, percent = 20}
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
    {name = "crystal coin", chance = 7380},
    {id = 3035, chance = 100000, maxCount = 8},
    {id = 6558, chance = 19790},
    {id = 239, chance = 21030, maxCount = 2},
    {id = 3028, chance = 11900, maxCount = 2},
    {id = 3032, chance = 16000, maxCount = 2},
    {id = 3029, chance = 10970, maxCount = 2},
    {id = 3030, chance = 8000, maxCount = 2},
    {id = 9057, chance = 8510, maxCount = 2},
    {id = 3041, chance = 1160},
    {id = 6499, chance = 15280},
    {id = 21974, chance = 12080},
    {id = 21981, chance = 920},
    {id = 21975, chance = 10510},
    {id = 3017, chance = 9640},
    {id = 5944, chance = 18670},
    {id = 8074, chance = 940},
    {name = "small enchanted sapphire", chance = 9640, maxCount = 3},
    {id = 3567, chance = 1540},
    {name = "royal star", chance = 4000, maxCount = 3},
    {id = 7368, chance = 9640, maxCount = 5},
    {id = 3403, chance = 3590},
    {id = 9058, chance = 2380},
    {id = 3027, chance = 10360, maxCount = 2},
    {id = 3037, chance = 4510},
    {id = 3026, chance = 8620, maxCount = 2},
    {name = "northwind rod", chance = 3180},
    {id = 3054, chance = 2260},
    {id = 7404, chance = 730},
    {id = 8061, chance = 730},
    {id = 3067, chance = 1030},
    {id = 3007, chance = 820}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -500},
    {name = "combat", interval = 2000, chance = 10, type = COMBAT_MANADRAIN, minDamage = 0, maxDamage = -250, range = 7},
    {name = "combat", interval = 1000, chance = 10, type = COMBAT_ICEDAMAGE, minDamage = -550, maxDamage = -780, effect = CONST_ME_ICETORNADO},
    {name = "combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -100, maxDamage = -300, effect = CONST_ME_PURPLEENERGY},
    {name = "speed", interval = 2000, chance = 15, effect = CONST_ME_MAGIC_RED}
})

monster:register()
