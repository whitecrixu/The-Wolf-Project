-- Roaring Water Elemental
-- Auto-converted from XML

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
monster:runHealth(1)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:staticAttackChance(85)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 50},
    {type = COMBAT_HOLYDAMAGE, percent = 30},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_LIFEDRAIN, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_DROWN, immunity = true},
})

-- Loot
monster:loot({
    {id = 2148, chance = 27000, maxCount = 90},
    {id = 2148, chance = 27000, maxCount = 87},
    {id = 8302, chance = 9000},
    {id = 2146, chance = 4125, maxCount = 2},
    {id = 7839, chance = 1000, maxCount = 2},
    {id = 8911, chance = 750},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=40, attack=90
-- name=ice, interval=1000, chance=15, min=-240, max=-320, radius=2, target=1, areaEffect=bluebubble, shootEffect=ice
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=15, min=90, max=150, areaEffect=blueshimmer
--]]

monster:register()
