-- Stone Golem
-- Converted from XML

local monster = Game.createMonsterType("Stone Golem")
if not monster then return end

monster:name("Stone Golem")
monster:nameDescription("a stone golem")
monster:health(270)
monster:maxHealth(270)
monster:experience(160)
monster:speed(180)
monster:race(RACE_UNDEAD)
monster:manaCost(590)
monster:corpseId(6005)
monster:outfit({lookType = 67})
monster:defense(20)
monster:armor(20)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isSummonable(true)
monster:isConvinceable(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 20},
    {type = COMBAT_FIREDAMAGE, percent = 20},
    {type = COMBAT_ENERGYDAMAGE, percent = 15},
    {type = COMBAT_DEATHDAMAGE, percent = 20},
    {type = COMBAT_ICEDAMAGE, percent = -10}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_DROWN, immunity = true},
    {type = COMBAT_EARTHDAMAGE, combat = true}
})

-- Loot
monster:loot({
    {id = 2148, chance = 90000, maxCount = 40},
    {id = 1294, chance = 13890, maxCount = 4},
    {id = 11232, chance = 10370},
    {id = 10549, chance = 1020},
    {id = 11227, chance = 760},
    {id = 11343, chance = 380},
    {id = 2209, chance = 5070},
    {id = 13757, chance = 550},
    {id = 2395, chance = 2500},
    {id = 5880, chance = 1980},
    {id = 2124, chance = 120},
    {id = 2156, chance = 30}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -85}
})

monster:register()
