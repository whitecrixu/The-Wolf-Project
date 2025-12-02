-- Tormentor
-- Auto-converted from XML

local monster = Game.createMonsterType("Tormentor")
if not monster then return end

monster:name("Tormentor")
monster:nameDescription("Tormentor")
monster:health(4100)
monster:maxHealth(4100)
monster:experience(3200)
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
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = 20},
    {type = COMBAT_ENERGYDAMAGE, percent = 20},
    {type = COMBAT_ICEDAMAGE, percent = 10},
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
    {text = "Take a ride with me.", yell = false},
    {text = "Pffffrrrrrrrrrrrr.", yell = false},
    {text = "Close your eyes... I have something for you.", yell = false},
    {text = "I will make you scream.", yell = false},
    {text = "I will haunt you forever!", yell = false},
})

-- Loot
monster:loot({
    {id = 6558, chance = 100000},
    {id = 6300, chance = 100000},
    {id = 6500, chance = 100000},
    {id = 11223, chance = 100000},
    {id = 2671, chance = 100000, maxCount = 2},
    {id = 2152, chance = 90000, maxCount = 10},
    {id = 11229, chance = 81000},
    {id = 2477, chance = 70000},
    {id = 5669, chance = 40000},
    {id = 6526, chance = 28000},
    {id = 2454, chance = 14000},
    {id = 7418, chance = 10000},
    {id = 2195, chance = 8000},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-340
-- name=death, interval=2000, chance=10, range=7, min=-130, max=-170, radius=1, target=1, shootEffect=death, areaEffect=smallclouds
-- name=earth, interval=2000, chance=20, range=7, min=-250, max=-400, radius=4, target=1, shootEffect=poison, areaEffect=poison
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=10, min=60, max=100, areaEffect=blueshimmer
-- name=speed, interval=2000, chance=15, duration=5000, speedchange=420, areaEffect=redshimmer
--]]

monster:register()
