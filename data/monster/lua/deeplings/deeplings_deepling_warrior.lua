-- Deepling Warrior
-- Auto-converted from XML

local monster = Game.createMonsterType("Deepling Warrior")
if not monster then return end

monster:name("Deepling Warrior")
monster:nameDescription("a deepling warrior")
monster:health(1600)
monster:maxHealth(1600)
monster:experience(1500)
monster:speed(210)
monster:race(RACE_BLOOD)
monster:corpseId(15175)
monster:outfit({lookType = 441})
monster:defense(25)
monster:armor(25)
monster:targetDistance(0)
monster:runHealth(30)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(70)

-- Resistances
monster:elements({
    {type = COMBAT_EARTHDAMAGE, percent = -20},
    {type = COMBAT_ENERGYDAMAGE, percent = -10},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_FREEZING, immunity = true},
    {condition = CONDITION_DROWN, immunity = true},
})

-- Voices
monster:voices({
    {text = "Jou wjil all djie!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 60000, maxCount = 100},
    {id = 2148, chance = 60000, maxCount = 80},
    {id = 15426, chance = 14285},
    {id = 15488, chance = 14285},
    {id = 15452, chance = 11111},
    {id = 7591, chance = 11111},
    {id = 15425, chance = 10000},
    {id = 7590, chance = 9090},
    {id = 15649, chance = 3571, maxCount = 5},
    {id = 2168, chance = 2941},
    {id = 2149, chance = 2854},
    {id = 13838, chance = 1030},
    {id = 5895, chance = 961},
    {id = 15453, chance = 684},
    {id = 13870, chance = 574},
    {id = 15451, chance = 534},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=50, attack=100
-- name=physical, interval=2000, chance=20, range=7, min=-0, max=-290, target=1, shootEffect=whirlwindaxe
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=15, min=50, max=150, areaEffect=blueshimmer
--]]

monster:register()
