-- Feversleep
-- Auto-converted from XML

local monster = Game.createMonsterType("Feversleep")
if not monster then return end

monster:name("Feversleep")
monster:nameDescription("Feversleep")
monster:health(5900)
monster:maxHealth(5900)
monster:experience(4400)
monster:speed(270)
monster:race(RACE_BLOOD)
monster:corpseId(22497)
monster:outfit({lookType = 593})
monster:defense(45)
monster:armor(45)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 10},
    {type = COMBAT_DEATHDAMAGE, percent = 5},
    {type = COMBAT_FIREDAMAGE, percent = 5},
    {type = COMBAT_ENERGYDAMAGE, percent = 5},
    {type = COMBAT_ICEDAMAGE, percent = 5},
    {type = COMBAT_HOLYDAMAGE, percent = -10},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 100},
    {id = 2152, chance = 100000, maxCount = 9},
    {id = 2149, chance = 11000, maxCount = 2},
    {id = 2150, chance = 12000, maxCount = 3},
    {id = 2656, chance = 1500},
    {id = 7590, chance = 40000, maxCount = 2},
    {id = 8473, chance = 18000},
    {id = 9970, chance = 16000, maxCount = 2},
    {id = 18418, chance = 13000},
    {id = 18413, chance = 11000},
    {id = 18419, chance = 18000},
    {id = 22537, chance = 17000},
    {id = 22538, chance = 14000},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=90, attack=90
-- name=poisoncondition, interval=2000, chance=20, min=-800, max=-1000, radius=7, areaEffect=yellowbubble
-- name=manadrain, interval=2000, chance=10, min=-70, max=-100, radius=5, areaEffect=redshimmer
-- name=feversleep skill reducer, interval=2000, chance=10
-- name=lifedrain, interval=2000, chance=10, min=-250, max=-300, length=6, target=1, areaEffect=yellowenergy
-- name=death, interval=2000, chance=15, min=-150, max=-300, radius=1, target=1, shootEffect=suddendeath, areaEffect=mortarea
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=20, min=250, max=425, areaEffect=blueshimmer
-- name=invisible, interval=2000, chance=10, duration=5000, areaEffect=blackspark
--]]

monster:register()
