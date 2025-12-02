-- Apprentice Sheng
-- Auto-converted from XML

local monster = Game.createMonsterType("Apprentice Sheng")
if not monster then return end

monster:name("Apprentice Sheng")
monster:nameDescription("apprentice sheng")
monster:health(95)
monster:maxHealth(95)
monster:experience(100)
monster:speed(170)
monster:race(RACE_BLOOD)
monster:corpseId(5981)
monster:outfit({lookType = 23})
monster:defense(13)
monster:armor(12)
monster:targetDistance(4)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:pushable(false)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Immunities
monster:immunities({
    {condition = CONDITION_ENERGY, immunity = true},
})

-- Voices
monster:voices({
    {text = "I will protect the secrets of my master!", yell = false},
    {text = "This isle will become ours alone!", yell = false},
    {text = "Kaplar!", yell = false},
})

-- Summons
monster:summons({
    {name = "Hyena", chance = 100, interval = 10500, max = 1},
})

-- Loot
monster:loot({
    {id = 3976, chance = 50000, maxCount = 10},
    {id = 2148, chance = 100000, maxCount = 20},
    {id = 2050, chance = 10000},
    {id = 2461, chance = 8000},
    {id = 2649, chance = 8000},
    {id = 5878, chance = 100000},
    {id = 2404, chance = 10000},
    {id = 2362, chance = 20000, maxCount = 5},
    {id = 2817, chance = 10000},
    {id = 2311, chance = 2857},
    {id = 7425, chance = 1000},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=15, attack=10
-- name=energy, interval=1000, chance=14, range=7, min=-15, max=-25, shootEffect=energyball, areaEffect=energyarea
-- name=fire, interval=2000, chance=10, range=7, min=-15, max=-45, radius=1, target=1, shootEffect=fire, areaEffect=firearea
-- name=energyfield, interval=1000, chance=8, range=7, radius=1, target=1, shootEffect=energy
-- name=physical, interval=10500, chance=100, radius=3, areaEffect=redshimmer
--]]

monster:register()
