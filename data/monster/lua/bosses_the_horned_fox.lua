-- The Horned Fox
-- Auto-converted from XML

local monster = Game.createMonsterType("The Horned Fox")
if not monster then return end

monster:name("The Horned Fox")
monster:nameDescription("the Horned Fox")
monster:health(265)
monster:maxHealth(265)
monster:experience(200)
monster:speed(210)
monster:race(RACE_BLOOD)
monster:corpseId(5983)
monster:outfit({lookType = 202})
monster:defense(16)
monster:armor(17)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "You will never get me!", yell = false},
    {text = "I'll be back!", yell = false},
    {text = "Catch me, if you can!", yell = false},
    {text = "Help me, boys!", yell = false},
})

-- Summons
monster:summons({
    {name = "minotaur archer", chance = 13, interval = 1000, max = 2},
    {name = "minotaur guard", chance = 13, interval = 1000, max = 2},
    {name = "minotaur mage", chance = 13, interval = 1000, max = 2},
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 30},
    {id = 2410, chance = 50000, maxCount = 2},
    {id = 2419, chance = 10000},
    {id = 2510, chance = 5000},
    {id = 2667, chance = 20000},
    {id = 2647, chance = 1818},
    {id = 2413, chance = 2857},
    {id = 3976, chance = 50000, maxCount = 10},
    {id = 5804, chance = 100000},
    {id = 2189, chance = 1333},
    {id = 2207, chance = 2000},
    {id = 2666, chance = 33333, maxCount = 2},
    {id = 2379, chance = 6666},
    {id = 2475, chance = 1000},
    {id = 2397, chance = 10000},
    {id = 2652, chance = 2500},
    {id = 2478, chance = 2857},
    {id = 2463, chance = 1818},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=54, attack=38
-- name=physical, interval=1000, chance=25, range=7, min=-50, max=-120, shootEffect=bolt
-- name=poisoncondition, interval=1000, chance=17, range=7, min=-50, max=-120, shootEffect=bolt
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=1000, chance=15, min=25, max=75, areaEffect=redshimmer
-- name=invisible, interval=1000, chance=10, duration=2000, areaEffect=blueshimmer
--]]

monster:register()
