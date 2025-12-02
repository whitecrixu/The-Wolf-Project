-- Midnight Asura
-- Auto-converted from XML

local monster = Game.createMonsterType("Midnight Asura")
if not monster then return end

monster:name("Midnight Asura")
monster:nameDescription("a midnight asura")
monster:health(2900)
monster:maxHealth(2900)
monster:experience(4100)
monster:speed(190)
monster:race(RACE_BLOOD)
monster:corpseId(6081)
monster:outfit({lookType = 150, lookBody = 77, lookLegs = 95, lookFeet = 105})
monster:defense(45)
monster:armor(55)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_DEATHDAMAGE, percent = 100},
    {type = COMBAT_HOLYDAMAGE, percent = -10},
    {type = COMBAT_ICEDAMAGE, percent = 20},
    {type = COMBAT_FIREDAMAGE, percent = -5},
    {type = COMBAT_ENERGYDAMAGE, percent = 10},
    {type = COMBAT_EARTHDAMAGE, percent = 10},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_CURSED, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Midnight is the time of doom!", yell = false},
    {text = "Embrace the darkness!", yell = false},
    {text = "The night will consume you!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 80000, maxCount = 197},
    {id = 2152, chance = 25000, maxCount = 4},
    {id = 7643, chance = 12000},
    {id = 7642, chance = 10000},
    {id = 5912, chance = 5000},
    {id = 2146, chance = 7500},
    {id = 2149, chance = 7000},
    {id = 2150, chance = 6500},
    {id = 2155, chance = 2000},
    {id = 5944, chance = 3000},
    {id = 6299, chance = 1500},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=70, attack=100
-- name=death, interval=2000, chance=20, range=7, min=-200, max=-400, shootEffect=death, areaEffect=mortarea
-- name=ice, interval=2000, chance=15, range=7, min=-150, max=-300, shootEffect=ice, areaEffect=icearea
-- name=manadrain, interval=2000, chance=10, range=7, min=-100, max=-200, areaEffect=poff
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=20, min=100, max=200, areaEffect=blueshimmer
--]]

monster:register()
