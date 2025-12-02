-- Rahemos
-- Auto-converted from XML

local monster = Game.createMonsterType("Rahemos")
if not monster then return end

monster:name("Rahemos")
monster:nameDescription("a rahemos")
monster:health(3700)
monster:maxHealth(3700)
monster:experience(3100)
monster:speed(320)
monster:race(RACE_UNDEAD)
monster:corpseId(6031)
monster:outfit({lookType = 87})
monster:defense(35)
monster:armor(30)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = 94},
    {type = COMBAT_ENERGYDAMAGE, percent = 92},
    {type = COMBAT_HOLYDAMAGE, percent = -25},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FREEZING, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_CURSED, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "It's a kind of magic.", yell = false},
    {text = "Abrah Kadabrah!", yell = false},
    {text = "Nothing hidden in my wrappings.", yell = false},
    {text = "It's not a trick, it's Rahemos.", yell = false},
    {text = "Meet my friend from hell.", yell = false},
    {text = "I will make you believe in magic.", yell = false},
})

-- Summons
monster:summons({
    {name = "Demon", chance = 12, interval = 1000, max = 1},
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 90},
    {id = 2148, chance = 50000, maxCount = 80},
    {id = 2148, chance = 50000, maxCount = 60},
    {id = 2150, chance = 7000, maxCount = 3},
    {id = 2214, chance = 7000},
    {id = 7590, chance = 7000},
    {id = 2662, chance = 300},
    {id = 2176, chance = 500},
    {id = 2185, chance = 500},
    {id = 2153, chance = 500},
    {id = 2184, chance = 500},
    {id = 2447, chance = 200},
    {id = 2348, chance = 100000},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=90, attack=150
-- name=lifedrain, interval=3000, chance=7, range=1, min=-75, max=-750
-- name=energy, interval=2000, chance=20, range=7, min=-60, max=-600, shootEffect=energy, areaEffect=energy
-- name=physical, interval=3000, chance=20, range=7, min=-60, max=-600, shootEffect=suddendeath, areaEffect=mortarea
-- name=speed, interval=1000, chance=12, radius=6, duration=60000, speedchange=-650, areaEffect=poison
-- name=drunk, interval=1000, chance=8, range=7, shootEffect=energy, areaEffect=energyarea
-- name=outfit, interval=1000, chance=15, range=7, duration=12000, areaEffect=blueshimmer
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=1000, chance=20, min=200, max=500, areaEffect=blueshimmer
-- name=outfit, interval=1000, chance=5, duration=4000, areaEffect=blueshimmer
--]]

monster:register()
