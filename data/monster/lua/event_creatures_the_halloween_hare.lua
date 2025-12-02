-- The Halloween Hare
-- Auto-converted from XML

local monster = Game.createMonsterType("The Halloween Hare")
if not monster then return end

monster:name("The Halloween Hare")
monster:nameDescription("The Halloween Hare")
monster:health(2000)
monster:maxHealth(2000)
monster:experience(0)
monster:speed(150)
monster:race(RACE_BLOOD)
monster:outfit({lookType = 74})
monster:defense(999)
monster:armor(999)
monster:targetDistance(2)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:staticAttackChance(10)

-- Immunities
monster:immunities({
    {condition = CONDITION_BLEEDING, immunity = true},
    {condition = CONDITION_ENERGY, immunity = true},
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_DROWN, immunity = true},
    {condition = CONDITION_LIFEDRAIN, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100
-- name=outfit, interval=2000, chance=6, radius=3, duration=6000, areaEffect=yellowspark
-- name=outfit, interval=2000, chance=5, radius=3, duration=6000, areaEffect=yellowspark
-- name=outfit, interval=2000, chance=6, radius=3, duration=6000, areaEffect=yellowspark
-- name=outfit, interval=2000, chance=5, radius=3, duration=6000, areaEffect=yellowspark
-- name=outfit, interval=2000, chance=6, radius=3, duration=6000, areaEffect=yellowspark
-- name=outfit, interval=2000, chance=5, radius=3, duration=6000, areaEffect=yellowspark
-- name=outfit, interval=2000, chance=5, radius=3, duration=6000, areaEffect=yellowspark
-- name=outfit, interval=2000, chance=5, radius=3, duration=6000, areaEffect=yellowspark
-- name=outfit, interval=2000, chance=5, radius=3, duration=6000, areaEffect=yellowspark
-- name=outfit, interval=2000, chance=5, radius=3, duration=6000, areaEffect=yellowspark
-- name=outfit, interval=2000, chance=5, radius=3, duration=6000, areaEffect=yellowspark
-- name=outfit, interval=2000, chance=5, radius=3, duration=6000, areaEffect=yellowspark
-- name=outfit, interval=2000, chance=5, radius=3, duration=6000, areaEffect=yellowspark
-- name=outfit, interval=2000, chance=5, radius=3, duration=6000, areaEffect=yellowspark
-- name=outfit, interval=2000, chance=15, radius=3, duration=6000, areaEffect=yellowspark
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=1000, chance=50, min=1500, max=2000, areaEffect=blueshimmer
--]]

monster:register()
