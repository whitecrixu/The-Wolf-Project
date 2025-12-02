-- Roaring Water Elemental
-- Converted from XML

local monster = Game.createMonsterType("Roaring Water Elemental")
if not monster then return end

monster:name("Roaring Water Elemental")
monster:nameDescription("a roaring water elemental")
monster:health(1750)
monster:maxHealth(1750)
monster:experience(1300)
monster:speed(390)
monster:race(RACE_UNDEAD)
monster:corpseId(8965)
monster:outfit({lookType = 11})
monster:defense(30)
monster:armor(30)
monster:runHealth(175)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 50},
    {type = COMBAT_HOLYDAMAGE, percent = 30}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true},
    {type = COMBAT_LIFEDRAIN, combat = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_DROWN, immunity = true}
})

-- Loot
monster:loot({
    {id = 2148, chance = 27000, maxCount = 90},
    {id = 2148, chance = 27000, maxCount = 87},
    {id = 8302, chance = 9000},
    {id = 2146, chance = 4125, maxCount = 2},
    {id = 7839, chance = 1000, maxCount = 2},
    {id = 8911, chance = 750}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -130},
    {name = "ice", interval = 1000, chance = 15, minDamage = -240, maxDamage = -320, radius = 2}
})

monster:register()
