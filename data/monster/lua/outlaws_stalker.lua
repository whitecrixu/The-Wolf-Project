-- Stalker
-- Auto-converted from XML

local monster = Game.createMonsterType("Stalker")
if not monster then return end

monster:name("Stalker")
monster:nameDescription("a stalker")
monster:health(120)
monster:maxHealth(120)
monster:experience(90)
monster:speed(200)
monster:race(RACE_BLOOD)
monster:corpseId(20511)
monster:outfit({lookType = 128, lookHead = 78, lookBody = 116, lookLegs = 95, lookFeet = 114})
monster:defense(15)
monster:armor(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_DEATHDAMAGE, percent = 5},
    {type = COMBAT_PHYSICALDAMAGE, percent = -20},
    {type = COMBAT_HOLYDAMAGE, percent = -5},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_LIFEDRAIN, immunity = true},
})

-- Loot
monster:loot({
    {id = 2148, chance = 13000, maxCount = 8},
    {id = 2410, chance = 11170, maxCount = 2},
    {id = 2478, chance = 3500},
    {id = 2478, chance = 5510},
    {id = 2260, chance = 8670},
    {id = 2412, chance = 530},
    {id = 2425, chance = 1210},
    {id = 12430, chance = 1550},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=60, attack=20
-- name=lifedrain, interval=1000, chance=15, range=1, min=-20, max=-30, areaEffect=redshimmer
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=invisible, interval=2000, chance=40, duration=6000, areaEffect=blueshimmer
--]]

monster:register()
