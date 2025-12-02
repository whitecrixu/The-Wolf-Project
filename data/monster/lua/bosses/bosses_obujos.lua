-- Obujos
-- Auto-converted from XML

local monster = Game.createMonsterType("Obujos")
if not monster then return end

monster:name("Obujos")
monster:nameDescription("a obujos")
monster:health(90000)
monster:maxHealth(90000)
monster:experience(25000)
monster:speed(560)
monster:race(RACE_BLOOD)
monster:corpseId(15224)
monster:outfit({lookType = 445})
monster:defense(40)
monster:armor(40)
monster:targetDistance(0)
monster:runHealth(60)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)

-- Resistances
monster:elements({
    {type = COMBAT_EARTHDAMAGE, percent = -20},
    {type = COMBAT_ENERGYDAMAGE, percent = -20},
    {type = COMBAT_PHYSICALDAMAGE, percent = -20},
    {type = COMBAT_DEATHDAMAGE, percent = -20},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FREEZING, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_DROWN, immunity = true},
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "JN OBU!!", yell = false},
    {text = "QJELL KEJH!!", yell = false},
})

-- Loot
monster:loot({
    {id = 15411, chance = 100000},
    {id = 15404, chance = 14285},
    {id = 15412, chance = 14285},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-1200
-- name=death, interval=3000, chance=23, range=7, min=-200, max=-800, radius=7, target=1, shootEffect=suddendeath, areaEffect=mortarea
-- name=manadrain, interval=3500, chance=20, range=7, min=-200, max=-600, radius=6, target=1, shootEffect=suddendeath, areaEffect=bigclouds
-- name=earth, interval=2000, chance=25, range=7, min=-200, max=-800, radius=1, target=1, shootEffect=poisonarrow, areaEffect=greenbubble
-- name=ice, interval=1200, chance=7, min=-600, max=-1300, length=8, areaEffect=giantice
-- name=lifedrain, interval=2000, chance=14, min=-600, max=-1600, length=8, spread=3, areaEffect=icetornado
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=1000, chance=15, min=1000, max=2100, areaEffect=blueshimmer
--]]

monster:register()
