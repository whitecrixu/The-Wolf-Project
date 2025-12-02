-- Lich
-- Auto-converted from XML

local monster = Game.createMonsterType("Lich")
if not monster then return end

monster:name("Lich")
monster:nameDescription("a lich")
monster:health(880)
monster:maxHealth(880)
monster:experience(900)
monster:speed(220)
monster:race(RACE_UNDEAD)
monster:corpseId(6028)
monster:outfit({lookType = 99, lookHead = 95, lookBody = 116, lookLegs = 119, lookFeet = 115})
monster:defense(25)
monster:armor(25)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(80)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 80},
    {type = COMBAT_HOLYDAMAGE, percent = -10},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_CURSED, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_LIFEDRAIN, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Doomed be the living!", yell = false},
    {text = "Death awaits all!", yell = false},
    {text = "Thy living flesh offends me!", yell = false},
    {text = "Death and Decay!", yell = false},
    {text = "You will endure agony beyond thy death!", yell = false},
    {text = "Pain sweet pain!", yell = false},
    {text = "Come to me my children!", yell = false},
})

-- Summons
monster:summons({
    {name = "Bonebeast", chance = 10, interval = 2000, max = 1},
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 139},
    {id = 2152, chance = 19720},
    {id = 2175, chance = 10000},
    {id = 7589, chance = 7500},
    {id = 2144, chance = 5960, maxCount = 3},
    {id = 2143, chance = 5000},
    {id = 2532, chance = 2422},
    {id = 9970, chance = 2430, maxCount = 3},
    {id = 2149, chance = 2230, maxCount = 3},
    {id = 2214, chance = 1540},
    {id = 2479, chance = 740},
    {id = 2154, chance = 690},
    {id = 2436, chance = 550},
    {id = 2171, chance = 450},
    {id = 2535, chance = 350},
    {id = 2178, chance = 350},
    {id = 7893, chance = 200},
    {id = 2656, chance = 150},
    {id = 13291, chance = 100},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-75
-- name=lifedrain, interval=2000, chance=10, min=-140, max=-190, length=7, areaEffect=redshimmer
-- name=poisoncondition, interval=2000, chance=10, min=-300, max=-400, length=7, areaEffect=greenspark
-- name=lifedrain, interval=2000, chance=10, range=1, min=-200, max=-245, target=1, areaEffect=redshimmer
-- name=speed, interval=2000, chance=15, range=7, duration=30000, speedchange=-300, areaEffect=redshimmer
-- name=lifedrain, interval=2000, chance=10, min=-130, max=-195, radius=3, areaEffect=redshimmer
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=15, min=80, max=100, areaEffect=blueshimmer
--]]

monster:register()
