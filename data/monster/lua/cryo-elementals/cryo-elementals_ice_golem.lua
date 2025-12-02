-- Ice Golem
-- Auto-converted from XML

local monster = Game.createMonsterType("Ice Golem")
if not monster then return end

monster:name("Ice Golem")
monster:nameDescription("an ice golem")
monster:health(385)
monster:maxHealth(385)
monster:experience(295)
monster:speed(195)
monster:race(RACE_UNDEAD)
monster:corpseId(7282)
monster:outfit({lookType = 261})
monster:defense(26)
monster:armor(25)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:staticAttackChance(50)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 25},
    {type = COMBAT_ENERGYDAMAGE, percent = -20},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_DAZZLED, immunity = true},
    {condition = CONDITION_CURSED, immunity = true},
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_FREEZING, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
})

-- Voices
monster:voices({
    {text = "Chrrr.", yell = false},
    {text = "Crrrrk.", yell = false},
    {text = "Gnarr.", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 100},
    {id = 2148, chance = 50000, maxCount = 3},
    {id = 10578, chance = 11111},
    {id = 7441, chance = 5000},
    {id = 2144, chance = 1612},
    {id = 2146, chance = 578},
    {id = 2479, chance = 444},
    {id = 7588, chance = 444},
    {id = 2396, chance = 400},
    {id = 7290, chance = 266},
    {id = 7449, chance = 177},
    {id = 7902, chance = 111},
    {id = 2145, chance = 66},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=100, attack=40
-- name=speed, interval=1000, chance=13, length=8, duration=20000, speedchange=-800, areaEffect=energy
-- name=ice, interval=1000, chance=15, range=7, min=-50, max=-85, shootEffect=smallice, areaEffect=iceattack
-- name=ice golem skill reducer, interval=2000, chance=10
--]]

monster:register()
