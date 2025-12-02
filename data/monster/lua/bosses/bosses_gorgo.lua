-- Gorgo
-- Auto-converted from XML

local monster = Game.createMonsterType("Gorgo")
if not monster then return end

monster:name("Gorgo")
monster:nameDescription("Gorgo")
monster:health(4500)
monster:maxHealth(4500)
monster:experience(7000)
monster:speed(280)
monster:race(RACE_BLOOD)
monster:corpseId(10524)
monster:outfit({lookType = 330})
monster:defense(30)
monster:armor(30)
monster:runHealth(600)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(80)

-- Resistances
monster:elements({
    {type = COMBAT_ICEDAMAGE, percent = 20},
    {type = COMBAT_FIREDAMAGE, percent = -5},
    {type = COMBAT_ENERGYDAMAGE, percent = -10},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_LIFEDRAIN, immunity = true},
    {condition = CONDITION_DROWN, immunity = true},
})

-- Loot
monster:loot({
    {id = 2536, chance = 100000},
    {id = 2152, chance = 100000, maxCount = 20},
    {id = 11226, chance = 100000},
    {id = 7590, chance = 87000, maxCount = 2},
    {id = 10219, chance = 60000},
    {id = 8473, chance = 60000, maxCount = 2},
    {id = 2149, chance = 46470, maxCount = 4},
    {id = 7887, chance = 46470},
    {id = 7884, chance = 46470},
    {id = 7885, chance = 33300},
    {id = 7413, chance = 33300},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-450
-- name=lifedrain, interval=2000, chance=20, range=7, min=-21, max=-350, target=1, shootEffect=earth, areaEffect=carniphila
-- name=earth, interval=2000, chance=15, min=-250, max=-500, length=8, spread=3, areaEffect=carniphila
-- name=speed, interval=2000, chance=25, radius=7, target=1, speedchange=-400, areaEffect=poff
-- name=outfit, interval=2000, chance=1, range=7, target=1, duration=3000
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=25, min=150, max=300, areaEffect=blueshimmer
--]]

monster:register()
