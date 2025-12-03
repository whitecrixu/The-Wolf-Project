-- Frost Flower Asura
-- Converted from WolfOTS

local monster = Game.createMonsterType("Frost Flower Asura")
if not monster then return end

monster:name("Frost Flower Asura")
monster:nameDescription("a frost flower asura")
monster:health(3500)
monster:maxHealth(3500)
monster:experience(4200)
monster:speed(110)
monster:race(RACE_BLOOD)
monster:corpseId(28807)
monster:outfit({lookType = 150, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 86})
monster:defense(30)
monster:armor(56)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(80)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = -5},
    {type = COMBAT_EARTHDAMAGE, percent = -10},
    {type = COMBAT_FIREDAMAGE, percent = -15},
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
    {id = 3031, chance = 70980, maxCount = 100},
    {id = 3035, chance = 80500, maxCount = 6},
    {id = 3567, chance = 680},
    {id = 7368, chance = 6640, maxCount = 5},
    {id = 3027, chance = 5320},
    {id = 3007, chance = 250},
    {id = 6558, chance = 19650},
    {id = 6499, chance = 15850},
    {id = 3028, chance = 8200},
    {id = 3032, chance = 3970},
    {id = 3030, chance = 4560},
    {id = 3029, chance = 7600, maxCount = 3},
    {id = 9057, chance = 4770},
    {id = 239, chance = 12080, maxCount = 2},
    {id = 3026, chance = 7480},
    {id = 7404, chance = 550},
    {id = 3041, chance = 300},
    {id = 9058, chance = 380},
    {id = 21974, chance = 19650},
    {id = 21981, chance = 340},
    {id = 21975, chance = 17280},
    {id = 8061, chance = 250},
    {id = 3017, chance = 5790},
    {id = 3054, chance = 1100},
    {id = 5944, chance = 19520},
    {id = 8074, chance = 420},
    {id = 3403, chance = 3380},
    {id = 3037, chance = 1820},
    {id = 3067, chance = 19520},
    {id = 8083, chance = 19520}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = -110, maxDamage = -400},
    {name = "combat", interval = 1300, chance = 14, type = COMBAT_HOLYDAMAGE, minDamage = -185, maxDamage = -210, effect = CONST_ME_ICETORNADO},
    {name = "combat", interval = 1000, chance = 9, type = COMBAT_ICEDAMAGE, minDamage = -120, maxDamage = -200, range = 7, effect = CONST_ME_ICEATTACK, shootEffect = CONST_ANI_SMALLICE}
})

monster:register()
