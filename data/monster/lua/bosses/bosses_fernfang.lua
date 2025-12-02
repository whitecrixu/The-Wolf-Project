-- Fernfang
-- Auto-converted from XML

local monster = Game.createMonsterType("Fernfang")
if not monster then return end

monster:name("Fernfang")
monster:nameDescription("Fernfang")
monster:health(400)
monster:maxHealth(400)
monster:experience(400)
monster:speed(240)
monster:race(RACE_BLOOD)
monster:corpseId(20566)
monster:outfit({lookType = 206})
monster:defense(10)
monster:armor(15)
monster:targetDistance(4)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ICEDAMAGE, percent = 70},
    {type = COMBAT_EARTHDAMAGE, percent = 40},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "You desecrated this place!", yell = false},
    {text = "I will cleanse this isle!", yell = false},
    {text = "Grrrrrrr", yell = false},
    {text = "Yoooohhuuuu!", yell = true},
})

-- Summons
monster:summons({
    {name = "War Wolf", chance = 13, interval = 1000, max = 3},
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 20},
    {id = 1949, chance = 10000},
    {id = 2467, chance = 10000},
    {id = 2642, chance = 6666},
    {id = 3976, chance = 50000, maxCount = 10},
    {id = 2044, chance = 6666},
    {id = 2689, chance = 20000, maxCount = 3},
    {id = 2401, chance = 3333},
    {id = 2166, chance = 1428},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=50, attack=40
-- name=manadrain, interval=1000, chance=25, range=7, min=-25, max=-45, areaEffect=redshimmer
-- name=energy, interval=1000, chance=13, range=7, min=-70, max=-90, shootEffect=energy, areaEffect=energy
-- name=physical, interval=1000, chance=10, range=7, min=-140, max=-180, shootEffect=suddendeath
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=1000, chance=15, min=90, max=120, areaEffect=blueshimmer
-- name=speed, interval=1000, chance=7, duration=10000, speedchange=310, areaEffect=redshimmer
-- name=effect, interval=1000, chance=5, areaEffect=redshimmer
-- name=outfit, interval=1000, chance=5, duration=14000, areaEffect=blueshimmer
--]]

monster:register()
