-- Tarantula
-- Converted from XML

local monster = Game.createMonsterType("Tarantula")
if not monster then return end

monster:name("Tarantula")
monster:nameDescription("a tarantula")
monster:health(225)
monster:maxHealth(225)
monster:experience(120)
monster:speed(210)
monster:race(RACE_VENOM)
monster:manaCost(485)
monster:corpseId(6060)
monster:outfit({lookType = 219})
monster:defense(10)
monster:armor(10)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isSummonable(true)
monster:isConvinceable(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 10},
    {type = COMBAT_FIREDAMAGE, percent = -15},
    {type = COMBAT_ICEDAMAGE, percent = -10}
})

-- Immunities
monster:immunities({
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true}
})

-- Loot
monster:loot({
    {id = 2148, chance = 79000, maxCount = 40},
    {id = 11198, chance = 10000},
    {id = 2478, chance = 3050},
    {id = 2510, chance = 2000},
    {id = 2457, chance = 990},
    {id = 2169, chance = 120},
    {id = 8859, chance = 4820}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -75},
    {name = "poison", interval = 2000, chance = 10, radius = 1}
})

monster:register()
