-- Dragon Lord Hatchling
-- Auto-converted from XML

local monster = Game.createMonsterType("Dragon Lord Hatchling")
if not monster then return end

monster:name("Dragon Lord Hatchling")
monster:nameDescription("a dragon lord hatchling")
monster:health(750)
monster:maxHealth(750)
monster:experience(645)
monster:speed(190)
monster:race(RACE_BLOOD)
monster:corpseId(7622)
monster:outfit({lookType = 272})
monster:defense(20)
monster:armor(20)
monster:runHealth(30)

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
    {type = COMBAT_EARTHDAMAGE, percent = 10},
    {type = COMBAT_ICEDAMAGE, percent = -10},
    {type = COMBAT_ENERGYDAMAGE, percent = -10},
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
    {id = 2148, chance = 33750, maxCount = 90},
    {id = 2148, chance = 33750, maxCount = 75},
    {id = 2672, chance = 80000},
    {id = 7620, chance = 300},
    {id = 2796, chance = 560},
    {id = 7891, chance = 100},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=30, attack=45
-- name=fire, interval=2000, chance=10, min=-90, max=-125, length=5, spread=2, areaEffect=firearea
-- name=fire, interval=2000, chance=15, range=7, min=-55, max=-105, radius=4, target=1, shootEffect=fire, areaEffect=firearea
-- name=firefield, interval=2000, chance=10, range=7, radius=3, target=1, shootEffect=fire
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=15, min=26, max=48, areaEffect=blueshimmer
--]]

monster:register()
