-- Skeleton Elite Warrior
-- Converted from WolfOTS

local monster = Game.createMonsterType("Skeleton Elite Warrior")
if not monster then return end

monster:name("Skeleton Elite Warrior")
monster:nameDescription("a skeleton elite warrior")
monster:health(7800)
monster:maxHealth(7800)
monster:experience(4800)
monster:speed(155)
monster:race(RACE_UNDEAD)
monster:corpseId(5972)
monster:outfit({lookType = 298, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0})
monster:defense(15)
monster:armor(75)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(false)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = -5},
    {type = COMBAT_EARTHDAMAGE, percent = 5},
    {type = COMBAT_FIREDAMAGE, percent = -5},
    {type = COMBAT_HOLYDAMAGE, percent = -25},
    {type = COMBAT_DEATHDAMAGE, percent = 100}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = false},
    {condition = CONDITION_OUTFIT, immunity = false},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_BLEEDING, immunity = false}
})

-- Loot
monster:loot({
    {name = "platinum coin", chance = 43500, maxCount = 15},
    {id = 3115, chance = 50000},
    {name = "white mushroom", chance = 24000, maxCount = 3},
    {name = "soul orb", chance = 43500, maxCount = 5},
    {name = "knight axe", chance = 3250},
    {name = "pelvis bone", chance = 2630, maxCount = 10},
    {name = "unholy bone", chance = 2630, maxCount = 5},
    {name = "skull helmet", chance = 350},
    {name = "ruthless axe", chance = 150}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = -100, maxDamage = -700},
    {name = "combat", interval = 2000, chance = 15, type = COMBAT_LIFEDRAIN, minDamage = -300, maxDamage = -480, range = 1, effect = CONST_ME_MAGIC_RED},
    {name = "combat", interval = 1500, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -380, maxDamage = -520, range = 7, effect = CONST_ME_MORTAREA, shootEffect = CONST_ANI_SUDDENDEATH}
})

monster:register()
