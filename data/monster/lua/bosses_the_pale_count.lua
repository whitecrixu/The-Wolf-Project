-- The Pale Count
-- Auto-converted from XML

local monster = Game.createMonsterType("The Pale Count")
if not monster then return end

monster:name("The Pale Count")
monster:nameDescription("The Pale Count")
monster:health(20000)
monster:maxHealth(20000)
monster:experience(18000)
monster:speed(300)
monster:race(RACE_BLOOD)
monster:corpseId(21279)
monster:outfit({lookType = 558})
monster:defense(75)
monster:armor(75)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 20},
    {type = COMBAT_EARTHDAMAGE, percent = 20},
    {type = COMBAT_DEATHDAMAGE, percent = -40},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_CURSED, immunity = true},
    {condition = CONDITION_LIFEDRAIN, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Feel the hungry kiss of death!", yell = false},
    {text = "The monsters in the mirror will come eat your dreams.", yell = false},
    {text = "Your pitiful life has come to an end!", yell = false},
    {text = "I will squish you like a maggot and suck you dry!", yell = false},
    {text = "Yield to the inevitable!", yell = false},
    {text = "Some day I shall see my beautiful face in a mirror again.", yell = false},
})

-- Summons
monster:summons({
    {name = "Nightfiend", chance = 10, interval = 2000, max = 1},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=80, attack=120
-- name=speed, interval=1000, chance=17, range=7, radius=4, target=1, duration=1500, speedchange=-600
-- name=ice, interval=2000, chance=21, range=6, min=-130, max=-350, radius=2, target=1, shootEffect=smallice, areaEffect=giantice
-- name=manadrain, interval=2000, chance=15, range=7, min=-60, max=-120, shootEffect=earth, areaeffect=carniphila
--]]

monster:register()
