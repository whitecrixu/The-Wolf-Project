-- Dark Torturer
-- Auto-converted from XML

local monster = Game.createMonsterType("Dark Torturer")
if not monster then return end

monster:name("Dark Torturer")
monster:nameDescription("a dark torturer")
monster:health(7350)
monster:maxHealth(7350)
monster:experience(4650)
monster:speed(240)
monster:race(RACE_UNDEAD)
monster:corpseId(6328)
monster:outfit({lookType = 234})
monster:defense(40)
monster:armor(40)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(80)

-- Resistances
monster:elements({
    {type = COMBAT_EARTHDAMAGE, percent = 90},
    {type = COMBAT_ENERGYDAMAGE, percent = 30},
    {type = COMBAT_DEATHDAMAGE, percent = 10},
    {type = COMBAT_ICEDAMAGE, percent = -10},
    {type = COMBAT_HOLYDAMAGE, percent = -10},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "You like it, don't you?", yell = false},
    {text = "IahaEhheAie!", yell = false},
    {text = "It's party time!", yell = false},
    {text = "Harrr, Harrr!", yell = false},
    {text = "The torturer is in!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 100},
    {id = 2148, chance = 40000, maxCount = 99},
    {id = 2671, chance = 60000, maxCount = 2},
    {id = 2152, chance = 55000, maxCount = 8},
    {id = 6558, chance = 33333, maxCount = 3},
    {id = 5944, chance = 23000},
    {id = 7591, chance = 10000, maxCount = 2},
    {id = 7590, chance = 14830, maxCount = 2},
    {id = 2645, chance = 5050},
    {id = 9971, chance = 3140},
    {id = 6500, chance = 8520},
    {id = 2558, chance = 5250},
    {id = 6300, chance = 2008},
    {id = 7368, chance = 2222, maxCount = 5},
    {id = 5480, chance = 2222},
    {id = 5022, chance = 2760, maxCount = 2},
    {id = 7412, chance = 850},
    {id = 5801, chance = 1192},
    {id = 7388, chance = 480},
    {id = 2470, chance = 30},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=90, attack=100
-- name=physical, interval=2000, chance=10, range=7, max=-781, shootEffect=throwingknife
-- name=dark torturer skill reducer, interval=2000, chance=5
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=10, min=200, max=250, areaEffect=blueshimmer
--]]

monster:register()
