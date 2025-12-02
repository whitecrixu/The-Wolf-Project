-- Gnorre Chyllson
-- Auto-converted from XML

local monster = Game.createMonsterType("Gnorre Chyllson")
if not monster then return end

monster:name("Gnorre Chyllson")
monster:nameDescription("gnorre chyllson")
monster:health(7100)
monster:maxHealth(7100)
monster:experience(4000)
monster:speed(370)
monster:race(RACE_BLOOD)
monster:corpseId(7349)
monster:outfit({lookType = 251, lookHead = 11, lookBody = 9, lookLegs = 11, lookFeet = 85, lookAddons = 1})
monster:defense(52)
monster:armor(51)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)

-- Resistances
monster:elements({
    {type = COMBAT_DEATHDAMAGE, percent = -10},
    {type = COMBAT_PHYSICALDAMAGE, percent = -15},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_FREEZING, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "I am like the merciless northwind.", yell = false},
    {text = "Snow will be your death shroud.", yell = false},
    {text = "Feel the wrath of father chyll!", yell = false},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=60, attack=130
-- name=melee, interval=3000, chance=50, min=-500, max=-800, areaEffect=blackspark
-- name=ice, interval=1000, chance=15, range=7, min=-170, max=-200, shootEffect=snowball
--]]

monster:register()
