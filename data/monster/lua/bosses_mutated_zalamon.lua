-- Mutated Zalamon
-- Auto-converted from XML

local monster = Game.createMonsterType("Mutated Zalamon")
if not monster then return end

monster:name("Mutated Zalamon")
monster:nameDescription("Mutated Zalamon")
monster:health(155000)
monster:maxHealth(155000)
monster:experience(10000)
monster:speed(238)
monster:race(RACE_VENOM)
monster:corpseId(12385)
monster:outfit({lookType = 356})
monster:defense(65)
monster:armor(70)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = -10},
    {type = COMBAT_ENERGYDAMAGE, percent = -10},
    {type = COMBAT_PHYSICALDAMAGE, percent = 5},
    {type = COMBAT_ICEDAMAGE, percent = 10},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-400
-- name=poison, interval=2000, chance=15, range=7, max=-815, shootEffect=poison, areaEffect=poison
-- name=poison, interval=2000, chance=10, min=-100, max=-300, radius=4, target=1, shootEffect=poison, areaEffect=poison
-- name=speed, interval=4000, chance=20, range=7, target=1, duration=12000, speedchange=-350, shootEffect=poison
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=9, min=20, max=560, areaEffect=blueshimmer
-- name=outfit, interval=2000, chance=10, duration=10000, areaEffect=energy
-- name=outfit, interval=2000, chance=10, duration=10000, areaEffect=energy
-- name=outfit, interval=2000, chance=10, duration=10000, areaEffect=energy
-- name=outfit, interval=2000, chance=10, duration=10000, areaEffect=energy
-- name=outfit, interval=2000, chance=10, duration=10000, areaEffect=energy
--]]

monster:register()
