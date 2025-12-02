-- Training Monk
-- Auto-converted from XML

local monster = Game.createMonsterType("Training Monk")
if not monster then return end

monster:name("Training Monk")
monster:nameDescription("a training monk")
monster:health(100000)
monster:maxHealth(100000)
monster:experience(0)
monster:speed(0)
monster:race(RACE_BLOOD)
monster:outfit({lookType = 57})
monster:defense(100)
monster:armor(100)

-- Flags
monster:attackable(true)
monster:hostile(false)
monster:pushable(false)
monster:staticAttackChance(0)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 100},
    {type = COMBAT_HOLYDAMAGE, percent = 100},
    {type = COMBAT_DEATHDAMAGE, percent = 100},
    {type = COMBAT_FIREDAMAGE, percent = 100},
    {type = COMBAT_ENERGYDAMAGE, percent = 100},
    {type = COMBAT_ICEDAMAGE, percent = 100},
    {type = COMBAT_EARTHDAMAGE, percent = 100},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_BLEEDING, immunity = true},
    {condition = CONDITION_ENERGY, immunity = true},
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_FREEZING, immunity = true},
    {condition = CONDITION_DAZZLED, immunity = true},
    {condition = CONDITION_CURSED, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_LIFEDRAIN, immunity = true},
    {condition = CONDITION_MANADRAIN, immunity = true},
    {condition = CONDITION_DROWN, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=10, attack=1
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=1000, chance=100, min=5000, max=10000, areaEffect=blueshimmer
--]]

monster:register()
