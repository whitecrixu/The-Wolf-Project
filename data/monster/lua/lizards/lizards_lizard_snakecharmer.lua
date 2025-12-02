-- Lizard Snakecharmer
-- Auto-converted from XML

local monster = Game.createMonsterType("Lizard Snakecharmer")
if not monster then return end

monster:name("Lizard Snakecharmer")
monster:nameDescription("a lizard snakecharmer")
monster:health(325)
monster:maxHealth(325)
monster:experience(210)
monster:speed(190)
monster:race(RACE_BLOOD)
monster:corpseId(6041)
monster:outfit({lookType = 115})
monster:defense(15)
monster:armor(15)
monster:targetDistance(4)
monster:runHealth(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:pushable(true)
monster:canPushItems(true)
monster:staticAttackChance(80)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 20},
    {type = COMBAT_ICEDAMAGE, percent = 20},
    {type = COMBAT_PHYSICALDAMAGE, percent = -20},
    {type = COMBAT_FIREDAMAGE, percent = -10},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
})

-- Voices
monster:voices({
    {text = "I ssssmell warm blood!", yell = false},
    {text = "Shhhhhhhh", yell = false},
})

-- Summons
monster:summons({
    {name = "cobra", chance = 20, interval = 2000, max = 1},
})

-- Loot
monster:loot({
    {id = 2148, chance = 83740, maxCount = 55},
    {id = 2654, chance = 8640},
    {id = 3077, chance = 30000},
    {id = 5876, chance = 1320},
    {id = 2150, chance = 520},
    {id = 2182, chance = 230},
    {id = 2177, chance = 1430},
    {id = 5881, chance = 860},
    {id = 2181, chance = 920},
    {id = 7620, chance = 860},
    {id = 2154, chance = 150},
    {id = 2168, chance = 340},
    {id = 3971, chance = 230},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=20, attack=20
-- name=poisoncondition, interval=2000, chance=15, range=7, min=-100, max=-200, shootEffect=poison
-- name=earth, interval=2000, chance=15, range=7, min=-50, max=-110, radius=1, target=1, shootEffect=poison, areaEffect=greenbubble
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=50, min=50, max=100, areaEffect=blueshimmer
-- name=invisible, interval=2000, chance=10, duration=3000, areaEffect=blueshimmer
--]]

monster:register()
