-- Enlightened of the Cult
-- Auto-converted from XML

local monster = Game.createMonsterType("Enlightened of the Cult")
if not monster then return end

monster:name("Enlightened of the Cult")
monster:nameDescription("an enlightened of the cult")
monster:health(700)
monster:maxHealth(700)
monster:experience(500)
monster:speed(210)
monster:race(RACE_BLOOD)
monster:corpseId(20391)
monster:outfit({lookType = 193})
monster:defense(25)
monster:armor(25)
monster:targetDistance(4)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(50)

-- Resistances
monster:elements({
    {type = COMBAT_HOLYDAMAGE, percent = 20},
    {type = COMBAT_ICEDAMAGE, percent = 5},
    {type = COMBAT_PHYSICALDAMAGE, percent = 10},
    {type = COMBAT_ENERGYDAMAGE, percent = -5},
    {type = COMBAT_DEATHDAMAGE, percent = -5},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Praise to my master Urgith!", yell = false},
    {text = "You will rise as my servant!", yell = false},
    {text = "Praise to my masters! Long live the triangle!", yell = false},
    {text = "You will die in the name of the triangle!", yell = false},
})

-- Summons
monster:summons({
    {name = "Crypt Shambler", chance = 10, interval = 2000, max = 1},
    {name = "Ghost", chance = 10, interval = 2000, max = 1},
})

-- Loot
monster:loot({
    {id = 2148, chance = 64550, maxCount = 70},
    {id = 10555, chance = 10250},
    {id = 1962, chance = 910},
    {id = 12411, chance = 890},
    {id = 2200, chance = 790},
    {id = 7589, chance = 740},
    {id = 2146, chance = 550},
    {id = 6090, chance = 490},
    {id = 2167, chance = 450},
    {id = 5810, chance = 430},
    {id = 2436, chance = 350},
    {id = 2171, chance = 200},
    {id = 2187, chance = 180},
    {id = 5670, chance = 130},
    {id = 2114, chance = 130},
    {id = 7426, chance = 100},
    {id = 12608, chance = 100},
    {id = 5801, chance = 100},
    {id = 2656, chance = 40},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-100
-- name=lifedrain, interval=2000, chance=25, range=1, min=-70, max=-185, radius=1, target=1, shootEffect=holy, areaEffect=holyarea
-- name=drunk, interval=2000, chance=10, range=7, target=1, duration=5000, shootEffect=holy, areaEffect=holydamage
-- name=speed, interval=2000, chance=10, range=7, target=1, duration=6000, speedchange=-360, areaEffect=redshimmer
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=25, min=60, max=90, areaEffect=blueshimmer
-- name=invisible, interval=2000, chance=15, duration=4000, areaEffect=yellowbubble
--]]

monster:register()
