-- The Count
-- Converted from XML

local monster = Game.createMonsterType("The Count")
if not monster then return end

monster:name("The Count")
monster:nameDescription("the count")
monster:health(4600)
monster:maxHealth(4600)
monster:experience(1750)
monster:speed(370)
monster:race(RACE_UNDEAD)
monster:corpseId(8937)
monster:outfit({lookType = 287})
monster:defense(30)
monster:armor(30)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 20},
    {type = COMBAT_HOLYDAMAGE, percent = -20}
})

-- Immunities
monster:immunities({
    {type = COMBAT_LIFEDRAIN, combat = true},
    {type = COMBAT_DEATHDAMAGE, combat = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Loot
monster:loot({
    {id = 2148, chance = 40000, maxCount = 98},
    {id = 8752, chance = 100000},
    {id = 2391, chance = 2300}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -265},
    {name = "lifedrain", interval = 1000, chance = 9, maxDamage = -300, radius = 4}
})

monster:register()
