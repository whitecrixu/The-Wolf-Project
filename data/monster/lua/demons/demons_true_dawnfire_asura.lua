-- True Dawnfire Asura
-- Converted from WolfOTS

local monster = Game.createMonsterType("True Dawnfire Asura")
if not monster then return end

monster:name("True Dawnfire Asura")
monster:nameDescription("a true dawnfire asura")
monster:health(8500)
monster:maxHealth(8500)
monster:experience(7475)
monster:speed(180)
monster:race(RACE_BLOOD)
monster:corpseId(28664)
monster:outfit({lookType = 1068, lookHead = 114, lookBody = 94, lookLegs = 79, lookFeet = 121})
monster:defense(55)
monster:armor(77)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(80)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = -10},
    {type = COMBAT_ENERGYDAMAGE, percent = -10},
    {type = COMBAT_FIREDAMAGE, percent = 100},
    {type = COMBAT_ICEDAMAGE, percent = -5},
    {type = COMBAT_HOLYDAMAGE, percent = -10},
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
    {id = 3035, chance = 100000, maxCount = 8},
    {name = "crystal coin", chance = 4670},
    {id = 6558, chance = 30110},
    {id = 238, chance = 16560, maxCount = 2},
    {id = 3033, chance = 6810, maxCount = 2},
    {id = 3028, chance = 7500, maxCount = 2},
    {id = 3032, chance = 18010, maxCount = 2},
    {name = "small enchanted ruby", chance = 9440, maxCount = 3},
    {id = 3030, chance = 11890, maxCount = 2},
    {id = 9057, chance = 8560, maxCount = 2},
    {name = "royal star", chance = 4050, maxCount = 3},
    {id = 3041, chance = 1300},
    {id = 3039, chance = 3800},
    {id = 6299, chance = 1100},
    {id = 6499, chance = 22110},
    {id = 8043, chance = 2200},
    {id = 21974, chance = 11400},
    {id = 826, chance = 1980},
    {id = 3078, chance = 2820},
    {id = 3574, chance = 3170},
    {id = 21981, chance = 2110},
    {id = 21975, chance = 11460},
    {id = 5911, chance = 3070},
    {id = 3016, chance = 2330},
    {id = 5944, chance = 20140},
    {id = 8074, chance = 620},
    {id = 3071, chance = 1440}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -700},
    {name = "combat", interval = 2000, chance = 10, type = COMBAT_MANADRAIN, minDamage = -50, maxDamage = -300, range = 7},
    {name = "combat", interval = 1000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -450, maxDamage = -830, effect = CONST_ME_HITBYFIRE},
    {name = "combat", interval = 2000, chance = 20, type = COMBAT_DEATHDAMAGE, minDamage = -550, maxDamage = -750, effect = CONST_ME_BLACKSMOKE},
    {name = "speed", interval = 2000, chance = 15, effect = CONST_ME_MAGIC_RED}
})

monster:register()
