-- Charged Energy Elemental
-- Auto-converted from XML

local monster = Game.createMonsterType("Charged Energy Elemental")
if not monster then return end

monster:name("Charged Energy Elemental")
monster:nameDescription("a charged energy Elemental")
monster:health(500)
monster:maxHealth(500)
monster:experience(450)
monster:speed(270)
monster:race(RACE_UNDEAD)
monster:corpseId(8966)
monster:outfit({lookType = 293})
monster:defense(25)
monster:armor(25)
monster:runHealth(1)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:staticAttackChance(85)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = -5},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_ENERGY, immunity = true},
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_FREEZING, immunity = true},
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 100},
    {id = 2148, chance = 50000, maxCount = 22},
    {id = 7838, chance = 6250, maxCount = 3},
    {id = 8303, chance = 2063},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=30, attack=50
-- name=energy, interval=2000, chance=20, range=6, min=-168, max=-100, radius=4, target=1, shootEffect=energy, areaEffect=purpleenergy
-- name=energycondition, interval=1000, chance=15, radius=3, areaEffect=yellowenergy
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=15, min=90, max=150, areaEffect=blueshimmer
--]]

monster:register()
