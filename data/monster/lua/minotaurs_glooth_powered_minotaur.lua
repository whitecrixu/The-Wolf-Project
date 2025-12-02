-- Glooth Powered Minotaur
-- Auto-converted from XML

local monster = Game.createMonsterType("Glooth Powered Minotaur")
if not monster then return end

monster:name("Glooth Powered Minotaur")
monster:nameDescription("a glooth powered minotaur")
monster:health(3200)
monster:maxHealth(3200)
monster:experience(2600)
monster:speed(200)
monster:race(RACE_BLOOD)
monster:corpseId(5962)
monster:outfit({lookType = 607})
monster:defense(45)
monster:armor(40)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_EARTHDAMAGE, percent = 1},
    {type = COMBAT_FIREDAMAGE, percent = 1},
    {type = COMBAT_HOLYDAMAGE, percent = 90},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-290
-- name=physical, interval=2000, chance=15, max=-200, radius=3, areaEffect=blackspark
-- name=lifedrain, interval=2000, chance=15, range=7, min=-100, max=-225, radius=4, target=1, areaEffect=redshimmer
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=4000, chance=15, min=50, max=145, areaEffect=blueshimmer
--]]

monster:register()
