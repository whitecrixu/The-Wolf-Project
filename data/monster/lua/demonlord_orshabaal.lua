-- Orshabaal
-- Auto-converted from XML

local monster = Game.createMonsterType("Orshabaal")
if not monster then return end

monster:name("Orshabaal")
monster:nameDescription("Orshabaal")
monster:health(20500)
monster:maxHealth(20500)
monster:experience(10000)
monster:speed(380)
monster:race(RACE_FIRE)
monster:corpseId(2916)
monster:outfit({lookType = 201})
monster:defense(111)
monster:armor(90)
monster:runHealth(2500)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)

-- Resistances
monster:elements({
    {type = COMBAT_DEATHDAMAGE, percent = 50},
    {type = COMBAT_HOLYDAMAGE, percent = -1},
    {type = COMBAT_ICEDAMAGE, percent = -1},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_LIFEDRAIN, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "PRAISED BE MY MASTERS, THE RUTHLESS SEVEN!", yell = false},
    {text = "YOU ARE DOOMED!", yell = false},
    {text = "ORSHABAAL IS BACK!", yell = false},
    {text = "Be prepared for the day my masters will come for you!", yell = false},
    {text = "SOULS FOR ORSHABAAL!", yell = false},
})

-- Summons
monster:summons({
    {name = "demon", chance = 10, interval = 1000, max = 4},
})

-- Loot
monster:loot({
    {id = 6500, chance = 100000},
    {id = 2152, chance = 100000, maxCount = 69},
    {id = 6300, chance = 50000},
    {id = 5954, chance = 50000},
    {id = 2143, chance = 33333, maxCount = 15},
    {id = 2462, chance = 33333},
    {id = 7590, chance = 33333},
    {id = 2214, chance = 33333},
    {id = 2146, chance = 33333, maxCount = 8},
    {id = 8473, chance = 33333},
    {id = 2144, chance = 25000, maxCount = 8},
    {id = 2520, chance = 25000},
    {id = 2393, chance = 25000},
    {id = 2149, chance = 25000, maxCount = 7},
    {id = 2158, chance = 20000},
    {id = 2125, chance = 20000},
    {id = 7591, chance = 20000},
    {id = 2178, chance = 20000},
    {id = 2200, chance = 20000},
    {id = 1982, chance = 20000},
    {id = 2170, chance = 20000},
    {id = 2150, chance = 20000, maxCount = 17},
    {id = 2145, chance = 20000, maxCount = 5},
    {id = 2174, chance = 20000},
    {id = 2151, chance = 20000, maxCount = 3},
    {id = 7368, chance = 12500, maxCount = 42},
    {id = 2195, chance = 12500},
    {id = 2432, chance = 12500},
    {id = 2470, chance = 12500},
    {id = 2033, chance = 12500},
    {id = 8472, chance = 12500},
    {id = 2177, chance = 12500},
    {id = 2171, chance = 12500},
    {id = 2377, chance = 12500},
    {id = 2434, chance = 6666},
    {id = 9971, chance = 6666},
    {id = 2418, chance = 6666},
    {id = 2155, chance = 6666},
    {id = 2162, chance = 6666},
    {id = 2472, chance = 6666},
    {id = 2514, chance = 6666},
    {id = 2164, chance = 6666},
    {id = 2176, chance = 6666},
    {id = 5808, chance = 6666},
    {id = 2402, chance = 6666},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=190, attack=199
-- name=manadrain, interval=1000, chance=13, range=7, min=-300, max=-600
-- name=manadrain, interval=1000, chance=6, min=-150, max=-350, radius=5, areaEffect=poison
-- name=effect, interval=1000, chance=6, radius=5, areaEffect=blackspark
-- name=fire, interval=1000, chance=34, range=7, min=-310, max=-600, radius=7, target=1, shootEffect=fire, areaEffect=firearea
-- name=firefield, interval=1000, chance=10, range=7, radius=4, target=1, shootEffect=fire
-- name=energy, interval=1000, chance=15, min=-500, max=-850, length=8, areaEffect=energy
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=1000, chance=9, min=1500, max=2500, areaEffect=blueshimmer
-- name=healing, interval=1000, chance=17, min=600, max=1000, areaEffect=blueshimmer
-- name=speed, interval=1000, chance=5, duration=7000, speedchange=1901, areaEffect=redshimmer
--]]

monster:register()
