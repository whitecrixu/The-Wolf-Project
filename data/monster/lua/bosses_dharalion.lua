-- Dharalion
-- Auto-converted from XML

local monster = Game.createMonsterType("Dharalion")
if not monster then return end

monster:name("Dharalion")
monster:nameDescription("dharalion")
monster:health(380)
monster:maxHealth(380)
monster:experience(380)
monster:speed(240)
monster:race(RACE_BLOOD)
monster:corpseId(6011)
monster:outfit({lookType = 203})
monster:defense(25)
monster:armor(15)
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
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_LIFEDRAIN, immunity = true},
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Feel my wrath!", yell = false},
    {text = "Noone will stop my ascension!", yell = false},
    {text = "My powers are divine!", yell = false},
})

-- Summons
monster:summons({
    {name = "demon skeleton", chance = 6, interval = 1000, max = 2},
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 20},
    {id = 1949, chance = 10000},
    {id = 2578, chance = 5000},
    {id = 2260, chance = 4000},
    {id = 2401, chance = 3000},
    {id = 2642, chance = 20000},
    {id = 2682, chance = 6666},
    {id = 2802, chance = 10000},
    {id = 2600, chance = 33333},
    {id = 2177, chance = 2857},
    {id = 2689, chance = 20000, maxCount = 3},
    {id = 3976, chance = 50000, maxCount = 10},
    {id = 2652, chance = 5000},
    {id = 2544, chance = 20000, maxCount = 10},
    {id = 2456, chance = 10000},
    {id = 2032, chance = 4000},
    {id = 2062, chance = 2857},
    {id = 2125, chance = 1818},
    {id = 2154, chance = 1333},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=30, attack=28
-- name=manadrain, interval=1000, chance=15, range=7, min=-30, max=-60
-- name=energy, interval=1000, chance=13, range=7, min=-70, max=-90, shootEffect=energy, areaEffect=energy
-- name=physical, interval=1000, chance=10, range=7, min=-80, max=-151, shootEffect=suddendeath
-- name=effect, interval=1000, chance=13, range=7, shootEffect=poison, areaEffect=poison
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=1000, chance=20, min=90, max=120, areaEffect=blueshimmer
-- name=speed, interval=1000, chance=7, duration=10000, speedchange=300, areaEffect=redshimmer
--]]

monster:register()
