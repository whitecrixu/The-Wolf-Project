-- Banshee
-- Auto-converted from XML

local monster = Game.createMonsterType("Banshee")
if not monster then return end

monster:name("Banshee")
monster:nameDescription("a banshee")
monster:health(1000)
monster:maxHealth(1000)
monster:experience(900)
monster:speed(200)
monster:race(RACE_UNDEAD)
monster:corpseId(6019)
monster:outfit({lookType = 78})
monster:defense(25)
monster:armor(25)
monster:runHealth(500)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_HOLYDAMAGE, percent = -25},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_CURSED, immunity = true},
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_DROWN, immunity = true},
    {condition = CONDITION_LIFEDRAIN, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Dance for me your dance of death!", yell = false},
    {text = "Let the music play!", yell = false},
    {text = "I will mourn your death!", yell = false},
    {text = "Are you ready to rock?", yell = false},
    {text = "Feel my gentle kiss of death.", yell = false},
    {text = "That's what I call easy listening!", yell = false},
    {text = "IIIIEEEeeeeeehhhHHHH!", yell = true},
})

-- Loot
monster:loot({
    {id = 2047, chance = 70000},
    {id = 2148, chance = 30000, maxCount = 80},
    {id = 2170, chance = 8700},
    {id = 2657, chance = 6050},
    {id = 12402, chance = 4810},
    {id = 11337, chance = 4150},
    {id = 2144, chance = 2030},
    {id = 2411, chance = 1350},
    {id = 2134, chance = 1250},
    {id = 2143, chance = 1010},
    {id = 2372, chance = 910},
    {id = 2197, chance = 820},
    {id = 2214, chance = 730},
    {id = 2656, chance = 700},
    {id = 7589, chance = 680},
    {id = 2175, chance = 520},
    {id = 2121, chance = 460},
    {id = 7884, chance = 340},
    {id = 2655, chance = 150},
    {id = 2177, chance = 70},
    {id = 2124, chance = 60},
    {id = 13307, chance = 40},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-100
-- name=lifedrain, interval=2000, chance=15, min=-100, max=-200, radius=4, areaEffect=rednote
-- name=death, interval=2000, chance=5, range=1, min=-55, max=-350, radius=1, target=1, areaEffect=smallclouds
-- name=speed, interval=2000, chance=10, range=7, duration=15000, speedchange=-300, areaEffect=redshimmer
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=15, min=120, max=190, areaEffect=blueshimmer
--]]

monster:register()
