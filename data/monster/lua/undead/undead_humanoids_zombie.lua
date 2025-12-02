-- Zombie
-- Auto-converted from XML

local monster = Game.createMonsterType("Zombie")
if not monster then return end

monster:name("Zombie")
monster:nameDescription("a zombie")
monster:health(500)
monster:maxHealth(500)
monster:experience(280)
monster:speed(180)
monster:race(RACE_UNDEAD)
monster:corpseId(9875)
monster:outfit({lookType = 311})
monster:defense(15)
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
    {type = COMBAT_FIREDAMAGE, percent = 50},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_CURSED, immunity = true},
    {condition = CONDITION_ENERGY, immunity = true},
    {condition = CONDITION_FREEZING, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_DROWN, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_LIFEDRAIN, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Mst.... klll....", yell = false},
    {text = "Whrrrr... ssss.... mmm.... grrrrl", yell = false},
    {text = "Dnnnt... cmmm... clsrrr....", yell = false},
    {text = "Httt.... hmnnsss...", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 82000, maxCount = 65},
    {id = 10576, chance = 10000},
    {id = 2460, chance = 9400},
    {id = 2398, chance = 7250},
    {id = 2417, chance = 7000},
    {id = 9808, chance = 5680},
    {id = 2457, chance = 4600},
    {id = 2381, chance = 3750},
    {id = 2205, chance = 1000},
    {id = 7620, chance = 740},
    {id = 2657, chance = 560},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-130
-- name=manadrain, interval=2000, chance=10, range=1, min=-14, max=-23, target=1
-- name=lifedrain, interval=2000, chance=15, range=7, min=-15, max=-24, target=1, areaEffect=redshimmer
-- name=death, interval=2000, chance=15, range=1, min=-30, max=-49, target=1, areaEffect=smallclouds
--]]

monster:register()
