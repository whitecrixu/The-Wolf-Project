-- Nightmare
-- Auto-converted from XML

local monster = Game.createMonsterType("Nightmare")
if not monster then return end

monster:name("Nightmare")
monster:nameDescription("a nightmare")
monster:health(2700)
monster:maxHealth(2700)
monster:experience(2150)
monster:speed(240)
monster:race(RACE_BLOOD)
monster:corpseId(6340)
monster:outfit({lookType = 245})
monster:defense(25)
monster:armor(25)
monster:runHealth(300)

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
    {type = COMBAT_FIREDAMAGE, percent = 20},
    {type = COMBAT_ENERGYDAMAGE, percent = 20},
    {type = COMBAT_ICEDAMAGE, percent = 10},
    {type = COMBAT_HOLYDAMAGE, percent = -25},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_CURSED, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_LIFEDRAIN, immunity = true},
})

-- Voices
monster:voices({
    {text = "Close your eyes... I want to show you something.", yell = false},
    {text = "I will haunt you forever!", yell = false},
    {text = "Pffffrrrrrrrrrrrr.", yell = false},
    {text = "I will make you scream.", yell = false},
    {text = "Take a ride with me.", yell = false},
    {text = "Weeeheeheeeheee!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 100},
    {id = 2148, chance = 50000, maxCount = 55},
    {id = 2671, chance = 29000, maxCount = 2},
    {id = 5944, chance = 20000},
    {id = 6558, chance = 19666, maxCount = 2},
    {id = 11223, chance = 15240},
    {id = 6500, chance = 10000},
    {id = 2547, chance = 9090, maxCount = 4},
    {id = 11229, chance = 9090},
    {id = 2152, chance = 2564, maxCount = 3},
    {id = 6300, chance = 1298},
    {id = 2532, chance = 990},
    {id = 2477, chance = 961},
    {id = 2195, chance = 337},
    {id = 6526, chance = 337},
    {id = 5669, chance = 123},
    {id = 2454, chance = 95},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=50, attack=50
-- name=death, interval=2000, chance=10, range=7, min=-120, max=-170, radius=1, target=1, shootEffect=death, areaEffect=smallclouds
-- name=earth, interval=2000, chance=20, range=7, min=-150, max=-350, radius=4, target=1, shootEffect=poison, areaEffect=poison
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=10, min=60, max=100, areaEffect=blueshimmer
-- name=speed, interval=2000, chance=15, duration=5000, speedchange=420, areaEffect=redshimmer
--]]

monster:register()
