-- Corym Vanguard
-- Auto-converted from XML

local monster = Game.createMonsterType("Corym Vanguard")
if not monster then return end

monster:name("Corym Vanguard")
monster:nameDescription("a corym vanguard")
monster:health(700)
monster:maxHealth(700)
monster:experience(490)
monster:speed(210)
monster:race(RACE_BLOOD)
monster:corpseId(19734)
monster:outfit({lookType = 534, lookHead = 101, lookLegs = 101})
monster:defense(20)
monster:armor(20)
monster:runHealth(50)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(70)

-- Resistances
monster:elements({
    {type = COMBAT_ICEDAMAGE, percent = 20},
    {type = COMBAT_ENERGYDAMAGE, percent = 20},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Gimme! Gimme!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 120},
    {id = 2696, chance = 20000},
    {id = 20097, chance = 16666},
    {id = 20101, chance = 14285},
    {id = 20100, chance = 14285},
    {id = 20099, chance = 11111},
    {id = 20089, chance = 10000},
    {id = 20093, chance = 5000},
    {id = 20092, chance = 5000},
    {id = 20090, chance = 4761},
    {id = 20098, chance = 3846},
    {id = 20139, chance = 3225},
    {id = 20126, chance = 1612},
    {id = 20105, chance = 14},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=40, attack=56
-- name=earth, interval=2000, chance=10, min=-50, max=-100, length=5, spread=3, areaEffect=greenbubble
-- name=death, interval=2000, chance=15, min=-40, max=-70, radius=4, target=1, areaEffect=mortarea
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=10, min=30, max=60, areaEffect=blueshimmer
--]]

monster:register()
