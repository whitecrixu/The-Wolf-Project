-- Swarmer Hatchling
-- Auto-converted from XML

local monster = Game.createMonsterType("Swarmer Hatchling")
if not monster then return end

monster:name("Swarmer Hatchling")
monster:nameDescription("a swarmer hatchling")
monster:health(5)
monster:maxHealth(5)
monster:experience(0)
monster:speed(560)
monster:race(RACE_BLOOD)
monster:corpseId(15388)
monster:outfit({lookType = 460})
monster:defense(20)
monster:armor(12)
monster:targetDistance(0)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)

-- Immunities
monster:immunities({
    {condition = CONDITION_POISON, immunity = true},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=34, attack=45
-- name=drown, interval=1000, chance=11, range=5, min=-15, max=-100, target=1, shootEffect=spear, areaEffect=bluebubble
--]]

monster:register()
