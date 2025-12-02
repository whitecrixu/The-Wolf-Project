-- Bruise Payne
-- Auto-converted from XML

local monster = Game.createMonsterType("Bruise Payne")
if not monster then return end

monster:name("Bruise Payne")
monster:nameDescription("Bruise Payne")
monster:health(1600)
monster:maxHealth(1600)
monster:experience(1000)
monster:speed(210)
monster:race(RACE_BLOOD)
monster:corpseId(9829)
monster:outfit({lookType = 307})
monster:defense(20)
monster:armor(20)
monster:runHealth(300)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = -10},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_CURSED, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_DROWN, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Loot
monster:loot({
    {id = 5894, chance = 100000, maxCount = 2},
    {id = 2167, chance = 100000},
    {id = 2148, chance = 100000, maxCount = 99},
    {id = 10579, chance = 100000},
    {id = 2150, chance = 100000, maxCount = 5},
    {id = 2800, chance = 100000},
    {id = 2529, chance = 92000},
    {id = 2144, chance = 85000, maxCount = 5},
    {id = 7386, chance = 25000},
    {id = 10016, chance = 16000},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-240
-- name=earth, interval=2000, chance=15, range=7, min=-70, max=-180, shootEffect=poison
-- name=drown, interval=2000, chance=15, min=-130, max=-237, radius=6, areaEffect=whitenote
-- name=mutated bat curse, interval=2000, chance=10
-- name=poisoncondition, interval=2000, chance=15, min=-12, max=-12, length=4, spread=3, areaeffect=poison
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=10, min=80, max=95, areaEffect=blueshimmer
--]]

monster:register()
