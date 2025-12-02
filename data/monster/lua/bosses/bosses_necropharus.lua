-- Necropharus
-- Auto-converted from XML

local monster = Game.createMonsterType("Necropharus")
if not monster then return end

monster:name("Necropharus")
monster:nameDescription("necropharus")
monster:health(750)
monster:maxHealth(750)
monster:experience(700)
monster:speed(240)
monster:race(RACE_BLOOD)
monster:corpseId(20574)
monster:outfit({lookType = 209})
monster:defense(25)
monster:armor(25)
monster:targetDistance(4)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Immunities
monster:immunities({
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_LIFEDRAIN, immunity = true},
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "You will rise as my servant!", yell = false},
    {text = "Praise to my master Urgith!", yell = false},
})

-- Summons
monster:summons({
    {name = "ghoul", chance = 20, interval = 1000, max = 2},
    {name = "ghost", chance = 17, interval = 1000, max = 1},
    {name = "mummy", chance = 15, interval = 1000, max = 1},
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 40},
    {id = 2032, chance = 10000},
    {id = 3969, chance = 150},
    {id = 2392, chance = 220},
    {id = 2804, chance = 20000, maxCount = 2},
    {id = 3976, chance = 50000, maxCount = 10},
    {id = 5809, chance = 100000},
    {id = 2186, chance = 500},
    {id = 2483, chance = 8500},
    {id = 2796, chance = 22500},
    {id = 2231, chance = 6000},
    {id = 2230, chance = 30000},
    {id = 2449, chance = 19900},
    {id = 2541, chance = 7500},
    {id = 2412, chance = 10000},
    {id = 2229, chance = 20000, maxCount = 3},
    {id = 2747, chance = 20000},
    {id = 2436, chance = 833},
    {id = 2663, chance = 909},
    {id = 2195, chance = 666},
    {id = 2423, chance = 5000},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=35, attack=45
-- name=lifedrain, interval=1000, chance=20, range=1, min=-80, max=-120, areaEffect=redspark
-- name=poison, interval=1000, chance=17, range=7, min=-50, max=-140, shootEffect=poison, areaEffect=poison
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=1000, chance=25, min=60, max=90, areaEffect=blueshimmer
--]]

monster:register()
