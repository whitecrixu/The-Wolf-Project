-- Blood Crab
-- Converted from XML

local monster = Game.createMonsterType("Blood Crab")
if not monster then return end

monster:name("Blood Crab")
monster:nameDescription("a blood crab")
monster:health(290)
monster:maxHealth(290)
monster:experience(160)
monster:speed(220)
monster:race(RACE_UNDEAD)
monster:manaCost(505)
monster:corpseId(6075)
monster:outfit({lookType = 200})
monster:defense(20)
monster:armor(20)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isSummonable(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 20},
    {type = COMBAT_FIREDAMAGE, percent = -10},
    {type = COMBAT_ENERGYDAMAGE, percent = -5}
})

-- Immunities
monster:immunities({
    {type = COMBAT_ICEDAMAGE, combat = true},
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_DROWN, immunity = true}
})

-- Loot
monster:loot({
    {id = 2148, chance = 90000, maxCount = 20},
    {id = 2667, chance = 13000},
    {id = 10550, chance = 6260},
    {id = 2464, chance = 5555},
    {id = 2478, chance = 2170},
    {id = 2143, chance = 480}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -85}
})

monster:register()
