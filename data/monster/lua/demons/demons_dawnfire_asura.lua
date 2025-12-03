-- Dawnfire Asura
-- Converted from WolfOTS

local monster = Game.createMonsterType("Dawnfire Asura")
if not monster then return end

monster:name("Dawnfire Asura")
monster:nameDescription("a dawnfire asura")
monster:health(2900)
monster:maxHealth(2900)
monster:experience(4100)
monster:speed(140)
monster:race(RACE_BLOOD)
monster:corpseId(21987)
monster:outfit({lookType = 150, lookHead = 114, lookBody = 94, lookLegs = 78, lookFeet = 79})
monster:defense(55)
monster:armor(48)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(80)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = -10},
    {type = COMBAT_ENERGYDAMAGE, percent = -5},
    {type = COMBAT_FIREDAMAGE, percent = 100},
    {type = COMBAT_ICEDAMAGE, percent = -10},
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
    {id = 3031, chance = 69190, maxCount = 100},
    {id = 3035, chance = 84140, maxCount = 9},
    {id = 6558, chance = 20910, maxCount = 2},
    {id = 238, chance = 8590, maxCount = 2},
    {id = 3033, chance = 3140},
    {id = 3028, chance = 2930},
    {id = 3032, chance = 3530},
    {id = 3030, chance = 5760},
    {id = 9057, chance = 2840},
    {id = 3041, chance = 220},
    {id = 6299, chance = 340},
    {id = 6499, chance = 10660},
    {id = 8043, chance = 870},
    {id = 21974, chance = 1230},
    {id = 826, chance = 570},
    {id = 3078, chance = 1160},
    {id = 3574, chance = 2190},
    {id = 21981, chance = 310},
    {id = 21975, chance = 11110},
    {id = 5911, chance = 2340},
    {id = 3016, chance = 800},
    {id = 5944, chance = 14560},
    {id = 8074, chance = 80},
    {id = 3071, chance = 910}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -269},
    {name = "combat", interval = 3700, chance = 17, type = COMBAT_LIFEDRAIN, minDamage = -100, maxDamage = -300, effect = CONST_ME_PURPLEENERGY},
    {name = "combat", interval = 3200, chance = 25, type = COMBAT_DEATHDAMAGE, minDamage = -100, maxDamage = -350, range = 5, effect = CONST_ME_MORTAREA},
    {name = "combat", interval = 2700, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -95, maxDamage = -180, range = 3, shootEffect = CONST_ANI_FIRE},
    {name = "speed", interval = 2000, chance = 20, effect = CONST_ME_SLEEP, shootEffect = CONST_ANI_EXPLOSION}
})

monster:register()
