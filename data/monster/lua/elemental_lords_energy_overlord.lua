-- Energy Overlord
-- Auto-converted from XML

local monster = Game.createMonsterType("Energy Overlord")
if not monster then return end

monster:name("Energy Overlord")
monster:nameDescription("an energy overlord")
monster:health(4000)
monster:maxHealth(4000)
monster:experience(2800)
monster:speed(290)
monster:race(RACE_UNDEAD)
monster:corpseId(8966)
monster:outfit({lookType = 290})
monster:defense(40)
monster:armor(40)
monster:runHealth(1)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:staticAttackChance(85)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 50},
    {type = COMBAT_FIREDAMAGE, percent = -1},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FREEZING, immunity = true},
    {condition = CONDITION_ENERGY, immunity = true},
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 64},
    {id = 8306, chance = 100000},
    {id = 2152, chance = 25000, maxCount = 2},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=40, attack=80
-- name=energy, interval=2000, chance=25, max=-800, length=7, areaEffect=purpleenergy
-- name=energy, interval=1000, chance=11, range=3, max=-200, target=1, areaEffect=purpleenergy
-- name=earth, interval=1000, chance=9, min=-50, max=-200, radius=5, areaEffect=bigplants
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=15, min=90, max=150, areaEffect=blueshimmer
--]]

monster:register()
