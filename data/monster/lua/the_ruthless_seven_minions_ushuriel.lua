-- Ushuriel
-- Auto-converted from XML

local monster = Game.createMonsterType("Ushuriel")
if not monster then return end

monster:name("Ushuriel")
monster:nameDescription("Ushuriel")
monster:health(31500)
monster:maxHealth(31500)
monster:experience(10500)
monster:speed(350)
monster:race(RACE_FIRE)
monster:corpseId(8721)
monster:outfit({lookType = 12, lookBody = 95, lookLegs = 19, lookFeet = 112})
monster:defense(45)
monster:armor(50)
monster:runHealth(1500)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(85)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 50},
    {type = COMBAT_FIREDAMAGE, percent = 30},
    {type = COMBAT_ENERGYDAMAGE, percent = 30},
    {type = COMBAT_ICEDAMAGE, percent = 30},
    {type = COMBAT_EARTHDAMAGE, percent = 30},
    {type = COMBAT_HOLYDAMAGE, percent = 25},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_CURSED, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "You can't run or hide forever!", yell = false},
    {text = "I'm the executioner of the Seven!", yell = false},
    {text = "The final punishment awaits you!", yell = false},
    {text = "The judgement is guilty! The sentence is death!", yell = false},
})

-- Loot
monster:loot({
    {id = 6500, chance = 100000},
    {id = 2789, chance = 88000, maxCount = 30},
    {id = 2148, chance = 88000, maxCount = 190},
    {id = 5880, chance = 39000, maxCount = 10},
    {id = 5925, chance = 32000, maxCount = 20},
    {id = 7591, chance = 24000},
    {id = 7391, chance = 24000},
    {id = 2178, chance = 23000},
    {id = 2498, chance = 22000},
    {id = 8473, chance = 22000},
    {id = 7590, chance = 21000},
    {id = 5741, chance = 21000},
    {id = 8472, chance = 20000},
    {id = 9810, chance = 20000},
    {id = 2475, chance = 20000},
    {id = 2152, chance = 20000, maxCount = 26},
    {id = 9971, chance = 19000},
    {id = 2177, chance = 17000},
    {id = 2176, chance = 17000},
    {id = 2392, chance = 15000},
    {id = 5892, chance = 14285},
    {id = 5669, chance = 12500},
    {id = 2419, chance = 12000},
    {id = 7385, chance = 11000},
    {id = 2383, chance = 9600},
    {id = 5954, chance = 9000, maxCount = 2},
    {id = 7402, chance = 8200},
    {id = 2479, chance = 8200},
    {id = 5891, chance = 7500},
    {id = 2393, chance = 7500},
    {id = 7417, chance = 6900},
    {id = 2491, chance = 6200},
    {id = 5885, chance = 5550},
    {id = 5884, chance = 4800},
    {id = 6103, chance = 2000},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-1200
-- name=physical, interval=1000, chance=10, min=-250, max=-500, length=10, areaEffect=mortarea
-- name=ice, interval=2000, chance=10, max=-400, length=8, spread=3, areaEffect=icetornado
-- name=cursecondition, interval=2000, chance=15, max=-800, radius=4, areaEffect=mortarea
-- name=energycondition, interval=2000, chance=15, min=-25, max=-25, radius=4, areaEffect=energy
-- name=drunk, interval=3000, chance=11, radius=6, duration=25000, areaEffect=purplenote
-- name=earth, interval=2000, chance=9, max=-600, length=8, spread=3, areaEffect=smallplants
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=25, min=400, max=600, areaEffect=greenshimmer
--]]

monster:register()
