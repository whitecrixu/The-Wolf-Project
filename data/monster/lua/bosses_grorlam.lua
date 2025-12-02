-- Grorlam
-- Auto-converted from XML

local monster = Game.createMonsterType("Grorlam")
if not monster then return end

monster:name("Grorlam")
monster:nameDescription("Grorlam")
monster:health(3000)
monster:maxHealth(3000)
monster:experience(2400)
monster:speed(240)
monster:race(RACE_BLOOD)
monster:corpseId(6005)
monster:outfit({lookType = 205})
monster:defense(25)
monster:armor(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 30},
    {type = COMBAT_HOLYDAMAGE, percent = 20},
    {type = COMBAT_ENERGYDAMAGE, percent = 20},
    {type = COMBAT_DEATHDAMAGE, percent = -5},
    {type = COMBAT_FIREDAMAGE, percent = -10},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 20},
    {id = 2483, chance = 10000},
    {id = 3976, chance = 50000, maxCount = 10},
    {id = 1295, chance = 10000},
    {id = 1294, chance = 20000, maxCount = 5},
    {id = 2395, chance = 2500},
    {id = 2050, chance = 20000},
    {id = 2580, chance = 5000},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=75, attack=60
-- name=physical, interval=1000, chance=15, range=7, min=-150, max=-200, shootEffect=largerock
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=1000, chance=25, min=100, max=150, areaEffect=blueshimmer
-- name=speed, interval=1000, chance=6, duration=6000, speedchange=270, areaEffect=redshimmer
--]]

monster:register()
