-- Trailemaw
-- Auto-converted from XML

local monster = Game.createMonsterType("Trailemaw")
if not monster then return end

monster:name("Trailemaw")
monster:nameDescription("a trailemaw")
monster:health(200000)
monster:maxHealth(200000)
monster:experience(0)
monster:speed(0)
monster:race(RACE_BLOOD)
monster:corpseId(22567)
monster:outfit({lookType = 594})
monster:defense(0)
monster:armor(0)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:staticAttackChance(50)

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, attack=-1
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=80, min=10000, max=20000, areaEffect=blueshimmer
--]]

monster:register()
