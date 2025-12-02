-- Bazir
-- Auto-converted from XML

local monster = Game.createMonsterType("Bazir")
if not monster then return end

monster:name("Bazir")
monster:nameDescription("Bazir")
monster:health(110000)
monster:maxHealth(110000)
monster:experience(30000)
monster:speed(530)
monster:race(RACE_FIRE)
monster:corpseId(2916)
monster:outfit({lookType = 35})
monster:defense(160)
monster:armor(160)
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
    {text = "COME HERE! FREE ITEMS FOR EVERYONE!", yell = true},
    {text = "BOW TO THE POWER OF THE RUTHLESS SEVEN!", yell = false},
    {text = "Slay your friends and I will spare you!", yell = true},
    {text = "DON'T BE AFRAID! I AM COMING IN PEACE!", yell = true},
})

-- Summons
monster:summons({
    {name = "bazir", chance = 15, interval = 1000, max = 1},
})

-- Loot
monster:loot({
    {id = 2142, chance = 3500},
    {id = 2231, chance = 9000},
    {id = 2144, chance = 15000, maxCount = 15},
    {id = 2158, chance = 1500},
    {id = 2195, chance = 4000},
    {id = 2186, chance = 3500},
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
    {id = 2182, chance = 3500},
    {id = 2155, chance = 1500},
    {id = 2188, chance = 2500},
    {id = 2396, chance = 7500},
    {id = 2177, chance = 1000},
    {id = 2162, chance = 11500},
    {id = 2472, chance = 3000},
    {id = 2514, chance = 7500},
    {id = 2164, chance = 5000},
    {id = 2178, chance = 4000},
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
    {id = 2165, chance = 9500},
    {id = 2197, chance = 4000},
    {id = 2174, chance = 2500},
    {id = 2151, chance = 14000, maxCount = 7},
    {id = 2112, chance = 14500},
    {id = 2421, chance = 13500},
    {id = 2377, chance = 20000},
    {id = 3955, chance = 100},
    {id = 2185, chance = 3500},
    {id = 2143, chance = 12500, maxCount = 15},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=200, attack=250
-- name=manadrain, interval=1000, chance=7, range=7, min=-100, max=-1000, shootEffect=energy, areaEffect=poff
-- name=drunk, interval=1000, chance=7, range=7, shootEffect=energy, areaEffect=energyarea
-- name=strength, interval=1000, chance=9, range=7, shootEffect=largerock, areaEffect=energyarea
-- name=lifedrain, interval=1000, chance=13, min=-400, max=-700, radius=8, areaEffect=bluebubble
-- name=manadrain, interval=1000, chance=10, min=-400, max=-700, radius=8, areaEffect=greenshimmer
-- name=speed, interval=1000, chance=12, radius=6, duration=60000, speedchange=-1900, areaEffect=poison
-- name=strength, interval=1000, chance=8, radius=5, areaEffect=blackspark
-- name=outfit, interval=1000, chance=2, radius=8, duration=5000, areaEffect=bluebubble
-- name=outfit, interval=1000, chance=2, radius=8, duration=5000, areaEffect=bluebubble
-- name=fire, interval=1000, chance=34, range=7, min=-100, max=-900, radius=7, target=1, shootEffect=fire, areaEffect=firearea
-- name=lifedrain, interval=1000, chance=15, min=-500, max=-850, length=8, areaEffect=redshimmer
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=1000, chance=15, min=5000, max=10000, areaEffect=blueshimmer
-- name=healing, interval=1000, chance=25, min=2000, max=3000, areaEffect=blueshimmer
-- name=speed, interval=1000, chance=8, duration=5000, speedchange=1901, areaEffect=redshimmer
-- name=invisible, interval=1000, chance=4, duration=10000, areaEffect=blueshimmer
-- name=invisible, interval=1000, chance=17, duration=2000, areaEffect=blueshimmer
-- name=outfit, interval=1000, chance=2, duration=7000, areaEffect=blueshimmer
--]]

monster:register()
