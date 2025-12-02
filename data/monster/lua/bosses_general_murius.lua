-- General Murius
-- Auto-converted from XML

local monster = Game.createMonsterType("General Murius")
if not monster then return end

monster:name("General Murius")
monster:nameDescription("the general Murius")
monster:health(550)
monster:maxHealth(550)
monster:experience(300)
monster:speed(240)
monster:race(RACE_BLOOD)
monster:corpseId(5983)
monster:outfit({lookType = 202})
monster:defense(22)
monster:armor(16)

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
    {text = "Feel the power of the Mooh'Tah!", yell = false},
    {text = "You will get what you deserve!", yell = false},
    {text = "For the king!", yell = false},
})

-- Summons
monster:summons({
    {name = "Minotaur Archer", chance = 15, interval = 1000, max = 2},
    {name = "Minotaur Guard", chance = 12, interval = 1000, max = 2},
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
    {id = 2148, chance = 2857},
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
-- name=melee, interval=2000, chance=100, skill=70, attack=55
-- name=physical, interval=1000, chance=12, range=7, min=-50, max=-120, shootEffect=bolt
-- name=physical, interval=1000, chance=10, min=-50, max=-80, radius=3, areaEffect=blackspark
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=1000, chance=15, min=50, max=100, areaEffect=redshimmer
--]]

monster:register()
