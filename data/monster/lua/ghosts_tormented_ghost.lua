-- Tormented Ghost
-- Auto-converted from XML

local monster = Game.createMonsterType("Tormented Ghost")
if not monster then return end

monster:name("Tormented Ghost")
monster:nameDescription("a ghost")
monster:health(210)
monster:maxHealth(210)
monster:experience(120)
monster:speed(160)
monster:race(RACE_UNDEAD)
monster:manaCost(100)
monster:corpseId(9741)
monster:outfit({lookType = 48})
monster:defense(10)
monster:armor(10)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Immunities
monster:immunities({
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_CURSED, immunity = true},
    {condition = CONDITION_BLEEDING, immunity = true},
    {condition = CONDITION_LIFEDRAIN, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Haaahhh!", yell = false},
    {text = "Grrglll", yell = false},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=30, attack=140
-- name=lifedrain, interval=3000, chance=15, range=1, min=-55, max=-105
--]]

monster:register()
