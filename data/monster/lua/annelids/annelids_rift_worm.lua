-- Rift Worm
-- Auto-converted from XML

local monster = Game.createMonsterType("Rift Worm")
if not monster then return end

monster:name("Rift Worm")
monster:nameDescription("a rift worm")
monster:health(2800)
monster:maxHealth(2800)
monster:experience(1195)
monster:speed(200)
monster:race(RACE_BLOOD)
monster:outfit({lookType = 295})
monster:defense(25)
monster:armor(25)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:staticAttackChance(50)

-- Resistances
monster:elements({
    {type = COMBAT_HOLYDAMAGE, percent = -5},
    {type = COMBAT_FIREDAMAGE, percent = -5},
    {type = COMBAT_ICEDAMAGE, percent = -5},
    {type = COMBAT_EARTHDAMAGE, percent = -25},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-160
-- name=manadrain, interval=2000, chance=10, range=7, min=-500, max=-1000
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=invisible, interval=2000, chance=10, duration=5000, areaEffect=groundshaker
--]]

monster:register()
