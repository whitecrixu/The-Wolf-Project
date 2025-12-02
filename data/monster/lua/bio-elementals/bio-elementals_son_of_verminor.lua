-- Son of Verminor
-- Auto-converted from XML

local monster = Game.createMonsterType("Son of Verminor")
if not monster then return end

monster:name("Son of Verminor")
monster:nameDescription("a son of verminor")
monster:health(8500)
monster:maxHealth(8500)
monster:experience(5900)
monster:speed(240)
monster:race(RACE_VENOM)
monster:corpseId(1490)
monster:outfit({lookType = 19})
monster:defense(20)
monster:armor(20)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(70)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = 10},
    {type = COMBAT_ENERGYDAMAGE, percent = 20},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Blubb", yell = false},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=95, attack=90
-- name=earth, interval=2000, chance=20, range=7, min=-150, max=-200, target=1, shootEffect=poison
-- name=earth, interval=2000, chance=15, min=-350, max=-390, radius=3, areaEffect=poison
-- name=death, interval=2000, chance=15, min=-220, max=-270, radius=3, areaEffect=smallclouds
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=20, min=250, max=350, areaEffect=blueshimmer
-- name=outfit, interval=5000, chance=10, duration=6000, areaEffect=blueshimmer
-- name=outfit, interval=5000, chance=10, duration=6000, areaEffect=blueshimmer
-- name=outfit, interval=5000, chance=10, duration=6000, areaEffect=blueshimmer
-- name=outfit, interval=5000, chance=10, duration=6000, areaEffect=blueshimmer
--]]

monster:register()
