-- Dragon Hatchling
-- Auto-converted from XML

local monster = Game.createMonsterType("Dragon Hatchling")
if not monster then return end

monster:name("Dragon Hatchling")
monster:nameDescription("a dragon hatchling")
monster:health(380)
monster:maxHealth(380)
monster:experience(185)
monster:speed(170)
monster:race(RACE_BLOOD)
monster:corpseId(7621)
monster:outfit({lookType = 271})
monster:defense(10)
monster:armor(10)
monster:runHealth(20)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_EARTHDAMAGE, percent = 75},
    {type = COMBAT_ICEDAMAGE, percent = -10},
    {type = COMBAT_ENERGYDAMAGE, percent = -5},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_FIRE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Fchu?", yell = false},
    {text = "Rooawwrr", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 67500, maxCount = 55},
    {id = 2672, chance = 61000},
    {id = 7618, chance = 400},
    {id = 12413, chance = 4300},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=45, attack=20
-- name=fire, interval=2000, chance=10, min=-60, max=-90, length=5, spread=2, areaEffect=firearea
-- name=fire, interval=2000, chance=15, range=7, min=-30, max=-55, radius=4, target=1, shootEffect=fire, areaEffect=firearea
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=15, min=8, max=33, areaEffect=blueshimmer
--]]

monster:register()
