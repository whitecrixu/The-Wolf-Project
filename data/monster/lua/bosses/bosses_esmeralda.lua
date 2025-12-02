-- Esmeralda
-- Auto-converted from XML

local monster = Game.createMonsterType("Esmeralda")
if not monster then return end

monster:name("Esmeralda")
monster:nameDescription("esmeralda")
monster:health(800)
monster:maxHealth(800)
monster:experience(600)
monster:speed(245)
monster:race(RACE_BLOOD)
monster:corpseId(9871)
monster:outfit({lookType = 305})
monster:defense(30)
monster:armor(30)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = -10},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_CURSED, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_LIFEDRAIN, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_DROWN, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Fcccccchhhhhh", yell = false},
})

-- Loot
monster:loot({
    {id = 2152, chance = 68125, maxCount = 4},
    {id = 2214, chance = 100000},
    {id = 2528, chance = 41400},
    {id = 2381, chance = 30050},
    {id = 2148, chance = 58775, maxCount = 100},
    {id = 2148, chance = 58775, maxCount = 19},
    {id = 10585, chance = 100000},
    {id = 2438, chance = 14150},
    {id = 2476, chance = 45950},
    {id = 2799, chance = 9600},
    {id = 7884, chance = 2775},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=60, attack=50
-- name=earth, interval=2000, chance=30, range=7, max=-110, shootEffect=poison
-- name=poisoncondition, interval=2000, chance=22, min=-100, max=-100, length=8, areaEffect=smallplants
-- name=poisoncondition, interval=2000, chance=15, min=-80, max=-80, radius=3, areaEffect=greenspark
-- name=lifedrain, interval=2000, chance=25, range=7, max=-110, radius=3, areaEffect=redspark
--]]

monster:register()
