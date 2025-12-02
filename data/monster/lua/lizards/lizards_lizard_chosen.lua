-- Lizard Chosen
-- Auto-converted from XML

local monster = Game.createMonsterType("Lizard Chosen")
if not monster then return end

monster:name("Lizard Chosen")
monster:nameDescription("a lizard chosen")
monster:health(3050)
monster:maxHealth(3050)
monster:experience(2200)
monster:speed(260)
monster:race(RACE_BLOOD)
monster:corpseId(11288)
monster:outfit({lookType = 344})
monster:defense(45)
monster:armor(45)
monster:runHealth(50)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:pushable(false)
monster:canPushItems(true)
monster:staticAttackChance(80)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = 10},
    {type = COMBAT_ENERGYDAMAGE, percent = 20},
    {type = COMBAT_ICEDAMAGE, percent = 10},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Grzzzzzzz!", yell = false},
    {text = "Garrrblarrrrzzzz!", yell = false},
    {text = "Kzzzzzz!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 33000, maxCount = 100},
    {id = 2148, chance = 32000, maxCount = 100},
    {id = 2148, chance = 32000, maxCount = 36},
    {id = 5876, chance = 2000},
    {id = 11325, chance = 9890},
    {id = 12629, chance = 2870},
    {id = 2152, chance = 2920, maxCount = 5},
    {id = 11327, chance = 5800},
    {id = 7591, chance = 5350, maxCount = 3},
    {id = 11303, chance = 810},
    {id = 2145, chance = 2550, maxCount = 5},
    {id = 11326, chance = 3350},
    {id = 5881, chance = 980, maxCount = 3},
    {id = 2528, chance = 1100},
    {id = 11304, chance = 940},
    {id = 11302, chance = 140},
    {id = 11301, chance = 980},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=80, attack=80
-- name=poisoncondition, interval=2000, chance=15, min=-240, max=-320, length=3, spread=2, areaEffect=poison
-- name=earth, interval=2000, chance=15, min=-190, max=-340, radius=3, areaEffect=greenspark
-- name=earth, interval=2000, chance=10, min=-90, max=-180, length=8, areaEffect=greenbubble
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=10, min=75, max=125, areaEffect=greenshimmer
--]]

monster:register()
