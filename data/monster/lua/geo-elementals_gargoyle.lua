-- Gargoyle
-- Auto-converted from XML

local monster = Game.createMonsterType("Gargoyle")
if not monster then return end

monster:name("Gargoyle")
monster:nameDescription("a gargoyle")
monster:health(250)
monster:maxHealth(250)
monster:experience(150)
monster:speed(200)
monster:race(RACE_UNDEAD)
monster:corpseId(6027)
monster:outfit({lookType = 95})
monster:defense(25)
monster:armor(25)
monster:runHealth(30)

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
    {type = COMBAT_PHYSICALDAMAGE, percent = 40},
    {type = COMBAT_DEATHDAMAGE, percent = 1},
    {type = COMBAT_FIREDAMAGE, percent = -10},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_LIFEDRAIN, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
})

-- Voices
monster:voices({
    {text = "Harrrr Harrrr!", yell = false},
    {text = "Stone sweet stone.", yell = false},
    {text = "Feel my claws, softskin.", yell = false},
    {text = "Chhhhhrrrrk!", yell = false},
    {text = "There is a stone in your shoe!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 88000, maxCount = 30},
    {id = 2513, chance = 1000},
    {id = 8838, chance = 9220, maxCount = 2},
    {id = 2680, chance = 1810, maxCount = 5},
    {id = 2394, chance = 2150},
    {id = 11343, chance = 630},
    {id = 2194, chance = 15800, maxCount = 10},
    {id = 2457, chance = 850},
    {id = 2489, chance = 300},
    {id = 2129, chance = 1480},
    {id = 2209, chance = 260},
    {id = 11227, chance = 190},
    {id = 11195, chance = 11730},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=55, attack=20
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=20, min=5, max=15, areaEffect=blueshimmer
--]]

monster:register()
