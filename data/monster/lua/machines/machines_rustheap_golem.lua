-- Rustheap Golem
-- Auto-converted from XML

local monster = Game.createMonsterType("Rustheap Golem")
if not monster then return end

monster:name("Rustheap Golem")
monster:nameDescription("a rustheap golem")
monster:health(2800)
monster:maxHealth(2800)
monster:experience(2300)
monster:speed(250)
monster:race(RACE_ENERGY)
monster:corpseId(23355)
monster:outfit({lookType = 603})
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
    {type = COMBAT_FIREDAMAGE, percent = 70},
    {type = COMBAT_ENERGYDAMAGE, percent = -5},
    {type = COMBAT_PHYSICALDAMAGE, percent = -5},
    {type = COMBAT_DEATHDAMAGE, percent = 10},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_LIFEDRAIN, immunity = true},
})

-- Voices
monster:voices({
    {text = "*clatter*", yell = false},
    {text = "*krrk*", yell = false},
    {text = "*frzzp*", yell = false},
})

-- Loot
monster:loot({
    {id = 8309, chance = 1950},
    {id = 9930, chance = 5860},
    {id = 23567, chance = 14980},
    {id = 2148, chance = 100000, maxCount = 290},
    {id = 5880, chance = 330},
    {id = 24417, chance = 1950},
    {id = 2152, chance = 58310, maxCount = 3},
    {id = 2143, chance = 1300},
    {id = 2144, chance = 1630},
    {id = 7588, chance = 10100, maxCount = 2},
    {id = 7589, chance = 7170, maxCount = 2},
    {id = 2391, chance = 3580},
    {id = 7452, chance = 330},
    {id = 23542, chance = 330},
    {id = 23541, chance = 2930},
    {id = 9810, chance = 5860},
    {id = 9813, chance = 4230},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=118, attack=50
-- name=rustheap golem electrify, interval=2000, chance=11, range=7
-- name=frazzlemaw paralyze, interval=2000, chance=10
-- name=rustheap golem wave, interval=2000, chance=9, min=-100, max=-210
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=speed, interval=2000, chance=11, duration=6000, speedchange=428, areaEffect=blueshimmer
--]]

monster:register()
