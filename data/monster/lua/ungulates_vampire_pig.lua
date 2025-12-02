-- Vampire Pig
-- Auto-converted from XML

local monster = Game.createMonsterType("Vampire Pig")
if not monster then return end

monster:name("Vampire Pig")
monster:nameDescription("a vampire pig")
monster:health(305)
monster:maxHealth(305)
monster:experience(165)
monster:speed(300)
monster:race(RACE_BLOOD)
monster:corpseId(6000)
monster:outfit({lookType = 60})
monster:defense(35)
monster:armor(30)
monster:runHealth(30)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 10},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_LIFEDRAIN, immunity = true},
    {condition = CONDITION_DROWN, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Oink", yell = false},
    {text = "Oink oink", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 90000, maxCount = 40},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-100
-- name=lifedrain, interval=2000, chance=30, min=-15, max=-25, radius=4, target=1, areaEffect=bats
-- name=lifedrain, interval=2000, chance=10, range=3, min=-35, max=-55, target=1
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=outfit, interval=2000, chance=20, duration=1500, areaEffect=blueshimmer
--]]

monster:register()
