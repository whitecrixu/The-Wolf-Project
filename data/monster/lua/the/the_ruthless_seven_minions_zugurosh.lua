-- Zugurosh
-- Auto-converted from XML

local monster = Game.createMonsterType("Zugurosh")
if not monster then return end

monster:name("Zugurosh")
monster:nameDescription("Zugurosh")
monster:health(90500)
monster:maxHealth(90500)
monster:experience(10000)
monster:speed(340)
monster:race(RACE_FIRE)
monster:corpseId(8721)
monster:outfit({lookType = 12, lookHead = 2, lookBody = 35, lookLegs = 57, lookFeet = 91})
monster:defense(55)
monster:armor(45)
monster:runHealth(4500)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(85)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 50},
    {type = COMBAT_HOLYDAMAGE, percent = 30},
    {type = COMBAT_FIREDAMAGE, percent = 30},
    {type = COMBAT_ENERGYDAMAGE, percent = 20},
    {type = COMBAT_ICEDAMAGE, percent = 25},
    {type = COMBAT_EARTHDAMAGE, percent = 40},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_CURSED, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "You will run out of resources soon enough!", yell = true},
    {text = "One little mistake and you're all are mine!", yell = false},
    {text = "I sense your strength fading!", yell = false},
    {text = "I know you will show a weakness!", yell = false},
    {text = "Your fear will make you prone to mistakes!", yell = false},
})

-- Loot
monster:loot({
    {id = 6500, chance = 100000},
    {id = 2148, chance = 100000, maxCount = 194},
    {id = 9813, chance = 54000},
    {id = 9810, chance = 45000},
    {id = 7590, chance = 27000},
    {id = 8472, chance = 26000},
    {id = 7591, chance = 23000},
    {id = 8473, chance = 22000},
    {id = 9971, chance = 21000},
    {id = 2152, chance = 21000, maxCount = 30},
    {id = 6104, chance = 21000},
    {id = 5944, chance = 21000, maxCount = 10},
    {id = 2151, chance = 18000, maxCount = 30},
    {id = 5911, chance = 17000, maxCount = 10},
    {id = 2134, chance = 17000},
    {id = 5912, chance = 15000, maxCount = 10},
    {id = 5909, chance = 15000, maxCount = 10},
    {id = 5910, chance = 14000, maxCount = 10},
    {id = 5914, chance = 14000, maxCount = 10},
    {id = 5913, chance = 12000, maxCount = 10},
    {id = 5954, chance = 9700, maxCount = 2},
    {id = 2195, chance = 8700},
    {id = 2173, chance = 6000},
    {id = 2645, chance = 4500},
    {id = 2646, chance = 1500},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-800
-- name=lifedrain, interval=2000, chance=10, range=4, max=-500, target=1, areaEffect=redshimmer
-- name=death, interval=2000, chance=15, max=-500, length=7, areaEffect=mortarea
-- name=death, interval=2000, chance=15, max=-100, radius=4, areaEffect=smallclouds
-- name=firecondition, interval=3000, chance=20, min=-10, max=-10, radius=4, target=1, areaEffect=explosion
-- name=manadrain, interval=1000, chance=13, min=-60, max=-200, radius=5, areaEffect=watersplash
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=50, min=40, max=60, areaEffect=greenshimmer
-- name=healing, interval=2000, chance=50, min=400, max=600, areaEffect=greenshimmer
-- name=invisible, interval=1000, chance=5, duration=6000, areaEffect=blueshimmer
--]]

monster:register()
