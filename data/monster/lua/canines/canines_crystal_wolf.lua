-- Crystal Wolf
-- Auto-converted from XML

local monster = Game.createMonsterType("Crystal Wolf")
if not monster then return end

monster:name("Crystal Wolf")
monster:nameDescription("a crystal wolf")
monster:health(750)
monster:maxHealth(750)
monster:experience(275)
monster:speed(200)
monster:race(RACE_UNDEAD)
monster:corpseId(13584)
monster:outfit({lookType = 391})
monster:defense(20)
monster:armor(20)
monster:runHealth(20)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Immunities
monster:immunities({
    {condition = CONDITION_FREEZING, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Raaarrr!", yell = false},
    {text = "Aaaauuuuuooooooo!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 56000, maxCount = 52},
    {id = 2666, chance = 52000, maxCount = 4},
    {id = 7839, chance = 11000, maxCount = 10},
    {id = 8878, chance = 3700},
    {id = 2183, chance = 7400},
    {id = 5897, chance = 3700},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=30, attack=40
-- name=earth, interval=2000, chance=15, min=-60, max=-130, length=3, spread=2, areaEffect=stones
-- name=ice, interval=2000, chance=15, range=6, min=-80, max=-150, radius=3, target=1, shootEffect=smallice, areaEffect=giantice
-- name=manadrain, interval=2000, chance=10, range=7, min=-25, max=-80
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=5, min=15, max=55, areaEffect=blueshimmer
--]]

monster:register()
