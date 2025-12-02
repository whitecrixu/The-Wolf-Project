-- Zarabustor
-- Auto-converted from XML

local monster = Game.createMonsterType("Zarabustor")
if not monster then return end

monster:name("Zarabustor")
monster:nameDescription("zarabustor")
monster:health(5100)
monster:maxHealth(5100)
monster:experience(8000)
monster:speed(220)
monster:race(RACE_BLOOD)
monster:corpseId(20554)
monster:outfit({lookType = 130, lookBody = 77, lookLegs = 92, lookFeet = 115, lookAddons = 1})
monster:defense(20)
monster:armor(20)
monster:targetDistance(4)
monster:runHealth(900)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_EARTHDAMAGE, percent = 95},
    {type = COMBAT_HOLYDAMAGE, percent = -5},
    {type = COMBAT_PHYSICALDAMAGE, percent = -5},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_ENERGY, immunity = true},
    {condition = CONDITION_FREEZING, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Killing is such a splendid diversion from my studies.", yell = false},
    {text = "Time to test my newest spells!", yell = false},
})

-- Summons
monster:summons({
    {name = "Warlock", chance = 10, interval = 2000, max = 2},
    {name = "Green Djinn", chance = 10, interval = 2000, max = 3},
})

-- Loot
monster:loot({
    {id = 2148, chance = 32000, maxCount = 80},
    {id = 2679, chance = 21000, maxCount = 4},
    {id = 2689, chance = 11000},
    {id = 2411, chance = 9600},
    {id = 2436, chance = 8330},
    {id = 7591, chance = 7190},
    {id = 7590, chance = 6760},
    {id = 7368, chance = 5500, maxCount = 4},
    {id = 2792, chance = 5000},
    {id = 2167, chance = 4200},
    {id = 2178, chance = 4000},
    {id = 2047, chance = 3500},
    {id = 2656, chance = 3390},
    {id = 2146, chance = 3190},
    {id = 2151, chance = 3160},
    {id = 7898, chance = 3040},
    {id = 2600, chance = 3000},
    {id = 2124, chance = 2670},
    {id = 12410, chance = 2500},
    {id = 2123, chance = 2420},
    {id = 2197, chance = 2320},
    {id = 1986, chance = 2310},
    {id = 2466, chance = 2240},
    {id = 2114, chance = 2060},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-130
-- name=fire, interval=2000, chance=20, range=7, max=-250, radius=3, target=1, shootEffect=burstarrow, areaEffect=firearea
-- name=firefield, interval=2000, chance=10, range=7, radius=2, target=1, shootEffect=fire
-- name=physical, interval=2000, chance=25, range=7, max=-250, shootEffect=energy
-- name=energy, interval=2000, chance=10, min=-130, max=-350, length=8, areaEffect=bigclouds
-- name=manadrain, interval=2000, chance=10, range=7, max=-250
-- name=speed, interval=2000, chance=15, range=7, duration=20000, speedchange=-330, areaEffect=redshimmer
-- name=warlock skill reducer, interval=2000, chance=5, range=5
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=20, min=100, max=225, areaEffect=blueshimmer
-- name=invisible, interval=2000, chance=20, duration=10000, areaEffect=blueshimmer
--]]

monster:register()
