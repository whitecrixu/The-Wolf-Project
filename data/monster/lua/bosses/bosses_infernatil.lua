-- Infernatil
-- Auto-converted from XML

local monster = Game.createMonsterType("Infernatil")
if not monster then return end

monster:name("Infernatil")
monster:nameDescription("Infernatil")
monster:health(270000)
monster:maxHealth(270000)
monster:experience(85000)
monster:speed(605)
monster:race(RACE_FIRE)
monster:corpseId(2916)
monster:outfit({lookType = 35})
monster:defense(150)
monster:armor(165)
monster:runHealth(3000)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)

-- Immunities
monster:immunities({
    {condition = CONDITION_ENERGY, immunity = true},
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_LIFEDRAIN, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Worship Zathroth pathetic mortal!", yell = false},
    {text = "Your soul will be mine!", yell = false},
    {text = "ASHES TO ASHES!", yell = true},
    {text = "YOU WILL ALL BURN!", yell = true},
    {text = "THE DAY OF RECKONING IS AT HAND!", yell = true},
    {text = "BOW TO THE POWER OF THE RUTHLESS SEVEN!", yell = true},
})

-- Summons
monster:summons({
    {name = "hellfire fighter", chance = 8, interval = 1000, max = 4},
})

-- Loot
monster:loot({
    {id = 2142, chance = 3500},
    {id = 2231, chance = 9000},
    {id = 2144, chance = 15000, maxCount = 15},
    {id = 2158, chance = 1500},
    {id = 2195, chance = 4000},
    {id = 2192, chance = 2500},
    {id = 2125, chance = 1500},
    {id = 2124, chance = 5500},
    {id = 2520, chance = 15500},
    {id = 2462, chance = 11000},
    {id = 2387, chance = 20000},
    {id = 2434, chance = 4500},
    {id = 2167, chance = 13500},
    {id = 2432, chance = 17000},
    {id = 2393, chance = 12500},
    {id = 2148, chance = 99900, maxCount = 100},
    {id = 2148, chance = 88800, maxCount = 100},
    {id = 2148, chance = 77700, maxCount = 100},
    {id = 2148, chance = 66600, maxCount = 100},
    {id = 2179, chance = 8000},
    {id = 2470, chance = 5000},
    {id = 2033, chance = 7500},
    {id = 2418, chance = 4500},
    {id = 2155, chance = 1500},
    {id = 2396, chance = 7500},
    {id = 2177, chance = 1000},
    {id = 2162, chance = 11500},
    {id = 2472, chance = 3000},
    {id = 2514, chance = 7500},
    {id = 2164, chance = 5000},
    {id = 2178, chance = 4000},
    {id = 2186, chance = 3500},
    {id = 2176, chance = 12000},
    {id = 2171, chance = 4500},
    {id = 2200, chance = 4500},
    {id = 1982, chance = 2600},
    {id = 2214, chance = 13000},
    {id = 2123, chance = 3500},
    {id = 2170, chance = 13000},
    {id = 2402, chance = 15500},
    {id = 2436, chance = 5000},
    {id = 2150, chance = 13500, maxCount = 20},
    {id = 2145, chance = 9500, maxCount = 5},
    {id = 2149, chance = 15500, maxCount = 10},
    {id = 2146, chance = 13500, maxCount = 10},
    {id = 2182, chance = 3500},
    {id = 2165, chance = 9500},
    {id = 2197, chance = 4000},
    {id = 2174, chance = 2500},
    {id = 2151, chance = 14000, maxCount = 7},
    {id = 2112, chance = 14500},
    {id = 2421, chance = 13500},
    {id = 2377, chance = 20000},
    {id = 2185, chance = 3500},
    {id = 3955, chance = 100},
    {id = 2188, chance = 2500},
    {id = 2143, chance = 12500, maxCount = 15},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=210, attack=260
-- name=firecondition, interval=1000, chance=7, range=2, min=-800, max=-1200, shootEffect=fire, areaEffect=yellowspark
-- name=physical, interval=1000, chance=7, min=-250, max=-750, radius=6, areaEffect=explosion
-- name=fire, interval=1000, chance=50, min=-200, max=-500, radius=5, areaEffect=yellowspark
-- name=firefield, interval=1000, chance=4, radius=8, areaEffect=explosion
-- name=fire, interval=1000, chance=34, range=7, min=-350, max=-850, radius=7, target=1, shootEffect=fire, areaEffect=firearea
-- name=fire, interval=1000, chance=13, min=-500, max=-1000, length=8, areaEffect=explosion
-- name=fire, interval=1000, chance=10, min=-300, max=-1500, length=8, spread=3, areaEffect=firearea
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=1000, chance=15, min=5000, max=10000, areaEffect=blueshimmer
-- name=healing, interval=1000, chance=25, min=2000, max=3000, areaEffect=blueshimmer
-- name=speed, interval=1000, chance=10, duration=4000, speedchange=1800, areaEffect=redshimmer
--]]

monster:register()
