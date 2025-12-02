-- Nightmare Scion
-- Auto-converted from XML

local monster = Game.createMonsterType("Nightmare Scion")
if not monster then return end

monster:name("Nightmare Scion")
monster:nameDescription("a nightmare scion")
monster:health(1400)
monster:maxHealth(1400)
monster:experience(1350)
monster:speed(230)
monster:race(RACE_BLOOD)
monster:corpseId(9919)
monster:outfit({lookType = 321})
monster:defense(20)
monster:armor(20)
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
    {type = COMBAT_HOLYDAMAGE, percent = -25},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_CURSED, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Weeeheeheee!", yell = false},
    {text = "Pffffrrrrrrrrrrrr.", yell = false},
    {text = "Peak a boo, I killed you!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 100},
    {id = 2148, chance = 50000, maxCount = 53},
    {id = 2666, chance = 50000, maxCount = 4},
    {id = 11223, chance = 7692},
    {id = 11229, chance = 4761},
    {id = 2152, chance = 961, maxCount = 3},
    {id = 2491, chance = 666},
    {id = 7387, chance = 340},
    {id = 8871, chance = 340},
    {id = 6574, chance = 280},
    {id = 6300, chance = 250},
    {id = 7451, chance = 270},
    {id = 9941, chance = 100},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=30, attack=70
-- name=earth, interval=2000, chance=20, range=7, min=-115, max=-180, radius=4, target=1, shootEffect=poison, areaEffect=poison
-- name=death, interval=2000, chance=10, range=7, min=-70, max=-130, radius=1, target=1, shootEffect=suddendeath, areaEffect=smallclouds
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=5, min=60, max=95, areaEffect=blueshimmer
--]]

monster:register()
