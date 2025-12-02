-- Lesser Swarmer
-- Auto-converted from XML

local monster = Game.createMonsterType("Lesser Swarmer")
if not monster then return end

monster:name("Lesser Swarmer")
monster:nameDescription("a lesser swarmer")
monster:health(230)
monster:maxHealth(230)
monster:experience(0)
monster:speed(180)
monster:race(RACE_VENOM)
monster:corpseId(15388)
monster:outfit({lookType = 460})
monster:defense(5)
monster:armor(5)
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
-- name=melee, interval=2000, chance=100, skill=34, attack=35
-- name=lifedrain, interval=2000, chance=15, range=5, min=-15, max=-70, target=1, areaEffect=redshimmer
--]]

monster:register()
