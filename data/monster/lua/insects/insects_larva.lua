-- Larva
-- Converted from XML

local monster = Game.createMonsterType("Larva")
if not monster then return end

monster:name("Larva")
monster:nameDescription("a larva")
monster:health(70)
monster:maxHealth(70)
monster:experience(44)
monster:speed(175)
monster:race(RACE_VENOM)
monster:manaCost(355)
monster:corpseId(6023)
monster:outfit({lookType = 82})
monster:defense(10)
monster:armor(10)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isSummonable(true)
monster:isIllusionable(true)
monster:pushable(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 10},
    {type = COMBAT_FIREDAMAGE, percent = -10},
    {type = COMBAT_ICEDAMAGE, percent = -5}
})

-- Immunities
monster:immunities({
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_PARALYZE, immunity = true}
})

-- Loot
monster:loot({
    {id = 2148, chance = 63000, maxCount = 15},
    {id = 2666, chance = 14666}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -45}
})

monster:register()
