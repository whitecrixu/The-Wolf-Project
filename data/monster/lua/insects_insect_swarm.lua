-- Insect Swarm
-- Auto-converted from XML

local monster = Game.createMonsterType("Insect Swarm")
if not monster then return end

monster:name("Insect Swarm")
monster:nameDescription("a insect swarm")
monster:health(50)
monster:maxHealth(50)
monster:experience(40)
monster:speed(150)
monster:race(RACE_UNDEAD)
monster:outfit({lookType = 349})
monster:defense(5)
monster:armor(5)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:pushable(false)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = -10},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_POISON, immunity = true},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=10, attack=10
-- name=lifedrain, interval=2000, chance=15, range=1, max=-15, areaEffect=redshimmer
--]]

monster:register()
