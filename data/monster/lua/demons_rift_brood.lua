-- Rift Brood
-- Auto-converted from XML

local monster = Game.createMonsterType("Rift Brood")
if not monster then return end

monster:name("Rift Brood")
monster:nameDescription("a rift brood")
monster:health(3000)
monster:maxHealth(3000)
monster:experience(1600)
monster:speed(300)
monster:race(RACE_ENERGY)
monster:corpseId(1495)
monster:outfit({lookType = 290})
monster:defense(30)
monster:armor(30)
monster:runHealth(1)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:staticAttackChance(85)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 30},
    {type = COMBAT_HOLYDAMAGE, percent = 15},
    {type = COMBAT_DEATHDAMAGE, percent = -20},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FREEZING, immunity = true},
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=75, attack=60
-- name=energy, interval=1000, chance=90, range=3, min=-200, max=-400, radius=2, target=1, areaEffect=purpleenergy
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=15, min=90, max=150, areaEffect=blueshimmer
--]]

monster:register()
