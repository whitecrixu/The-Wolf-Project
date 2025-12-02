-- Rift Scythe
-- Auto-converted from XML

local monster = Game.createMonsterType("Rift Scythe")
if not monster then return end

monster:name("Rift Scythe")
monster:nameDescription("a rift scythe")
monster:health(3600)
monster:maxHealth(3600)
monster:experience(2000)
monster:speed(370)
monster:race(RACE_UNDEAD)
monster:outfit({lookType = 300})
monster:defense(30)
monster:armor(30)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(85)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = -10},
    {type = COMBAT_EARTHDAMAGE, percent = 20},
    {type = COMBAT_ICEDAMAGE, percent = 10},
    {type = COMBAT_HOLYDAMAGE, percent = -20},
    {type = COMBAT_DEATHDAMAGE, percent = 60},
    {type = COMBAT_FIREDAMAGE, percent = -20},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_LIFEDRAIN, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=135, attack=135
-- name=death, interval=2000, chance=60, range=7, max=-200, target=1, shootEffect=suddendeath, areaEffect=mortarea
-- name=lifedrain, interval=2000, chance=50, max=-600, length=7, areaEffect=redspark
-- name=physical, interval=2000, chance=40, max=-395, radius=4, areaEffect=redspark
-- name=physical, interval=3000, chance=60, max=-300, length=7, spread=3, areaEffect=explosionarea
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=1000, chance=25, min=100, max=195, areaEffect=blueshimmer
--]]

monster:register()
