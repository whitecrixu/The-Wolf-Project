-- Ice Overlord
-- Auto-converted from XML

local monster = Game.createMonsterType("Ice Overlord")
if not monster then return end

monster:name("Ice Overlord")
monster:nameDescription("an ice overlord")
monster:health(4000)
monster:maxHealth(2800)
monster:experience(1950)
monster:speed(390)
monster:race(RACE_UNDEAD)
monster:corpseId(8965)
monster:outfit({lookType = 11})
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
    {type = COMBAT_PHYSICALDAMAGE, percent = 50},
    {type = COMBAT_ENERGYDAMAGE, percent = -25},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_FREEZING, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_DROWN, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Loot
monster:loot({
    {id = 8300, chance = 100000},
    {id = 2148, chance = 50000, maxCount = 38},
    {id = 2152, chance = 50000, maxCount = 3},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=70, attack=100
-- name=speed, interval=2000, chance=18, radius=6, duration=5000, speedchange=-800, areaEffect=icetornado
-- name=ice, interval=1000, chance=9, range=7, min=-50, max=-400, target=1, shootEffect=smallice, areaEffect=iceattack
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=15, min=90, max=150, areaEffect=blueshimmer
--]]

monster:register()
