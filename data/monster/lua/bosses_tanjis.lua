-- Tanjis
-- Auto-converted from XML

local monster = Game.createMonsterType("Tanjis")
if not monster then return end

monster:name("Tanjis")
monster:nameDescription("a tanjis")
monster:health(17350)
monster:maxHealth(17350)
monster:experience(14500)
monster:speed(560)
monster:race(RACE_BLOOD)
monster:corpseId(15228)
monster:outfit({lookType = 446})
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
    {text = "JAUL QJELL, JAKNH JEH KENH!!", yell = false},
})

-- Loot
monster:loot({
    {id = 15409, chance = 50000},
    {id = 15414, chance = 25000},
    {id = 15413, chance = 20000},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-600
-- name=manadrain, interval=2500, chance=20, range=7, min=-200, max=-600, radius=4, target=1, shootEffect=poison, areaEffect=carniphila
-- name=ice, interval=3500, chance=27, range=7, min=-200, max=-400, radius=4, target=1, shootEffect=ice, areaEffect=icearea
-- name=ice, interval=3500, chance=15, range=1, min=-100, max=-400, radius=1, target=1
-- name=drown, interval=2300, chance=11, range=7, min=-200, max=-500, radius=4, target=1, shootEffect=ice, areaEffect=watersplash
-- name=manadrain, interval=2300, chance=14, range=7, min=-200, max=-600, radius=7, areaEffect=bubbles
-- name=physical, interval=2000, chance=10, range=7, min=-100, max=-400, radius=1, target=1, shootEffect=largerock
-- name=death, interval=1200, chance=7, min=-300, max=-800, length=8, areaEffect=smallclouds
-- name=energy, interval=2000, chance=14, min=-200, max=-500, length=8, spread=3, areaEffect=purpleenergy
-- name=speed, interval=2150, chance=16, range=7, radius=1, target=1, duration=15000, speedchange=-600
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=3000, chance=40, min=800, max=1100, areaEffect=blueshimmer
--]]

monster:register()
