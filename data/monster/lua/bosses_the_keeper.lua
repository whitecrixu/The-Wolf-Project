-- The Keeper
-- Auto-converted from XML

local monster = Game.createMonsterType("The Keeper")
if not monster then return end

monster:name("The Keeper")
monster:nameDescription("The Keeper")
monster:health(40000)
monster:maxHealth(40000)
monster:experience(3205)
monster:speed(290)
monster:race(RACE_VENOM)
monster:corpseId(12316)
monster:outfit({lookType = 220})
monster:defense(35)
monster:armor(35)
monster:runHealth(275)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(80)

-- Resistances
monster:elements({
    {type = COMBAT_DEATHDAMAGE, percent = 50},
    {type = COMBAT_ICEDAMAGE, percent = 20},
    {type = COMBAT_FIREDAMAGE, percent = -10},
    {type = COMBAT_ENERGYDAMAGE, percent = -10},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-250
-- name=speed, interval=4000, chance=20, range=7, target=1, duration=12000, speedchange=-350, shootEffect=poison
-- name=earth, interval=2000, chance=20, range=7, min=-80, max=-300, shootEffect=poison
-- name=lifedrain, interval=2000, chance=10, min=-200, max=-500, length=8, areaEffect=rednote
-- name=outfit, interval=2000, chance=1, range=7, duration=3000, areaEffect=blueshimmer
-- name=earth, interval=2000, chance=10, min=-200, max=-500, length=8, spread=3, areaEffect=poison
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=15, min=250, max=400, areaEffect=blueshimmer
--]]

monster:register()
