-- Warlock
-- Auto-converted from XML

local monster = Game.createMonsterType("Warlock")
if not monster then return end

monster:name("Warlock")
monster:nameDescription("a warlock")
monster:health(3500)
monster:maxHealth(3500)
monster:experience(4000)
monster:speed(220)
monster:race(RACE_BLOOD)
monster:corpseId(20527)
monster:outfit({lookType = 130, lookHead = 19, lookBody = 71, lookLegs = 128, lookFeet = 128, lookAddons = 1})
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
    {text = "Learn the secret of our magic! YOUR death!", yell = false},
    {text = "Even a rat is a better mage than you.", yell = false},
    {text = "We don't like intruders!", yell = false},
})

-- Summons
monster:summons({
    {name = "stone golem", chance = 10, interval = 2000, max = 1},
})

-- Loot
monster:loot({
    {id = 2148, chance = 29340, maxCount = 80},
    {id = 2679, chance = 19000, maxCount = 4},
    {id = 2689, chance = 9000},
    {id = 2411, chance = 7600},
    {id = 2047, chance = 1500},
    {id = 2124, chance = 700},
    {id = 2792, chance = 3000},
    {id = 2167, chance = 2200},
    {id = 2600, chance = 1000},
    {id = 2178, chance = 2000},
    {id = 2436, chance = 6370},
    {id = 2151, chance = 1150},
    {id = 7591, chance = 5190},
    {id = 7590, chance = 4760},
    {id = 2656, chance = 1410},
    {id = 7368, chance = 3500, maxCount = 4},
    {id = 2146, chance = 1190},
    {id = 1986, chance = 300},
    {id = 2123, chance = 430},
    {id = 2197, chance = 330},
    {id = 7898, chance = 1000},
    {id = 2466, chance = 240},
    {id = 2114, chance = 60},
    {id = 12410, chance = 510},
    {id = 7368, chance = 3470, maxCount = 4},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=42, attack=50
-- name=energy, interval=2000, chance=25, range=7, min=-90, max=-180, shootEffect=energy
-- name=warlock skill reducer, interval=2000, chance=5, range=5
-- name=manadrain, interval=2000, chance=10, range=7, max=-120
-- name=fire, interval=2000, chance=20, range=7, min=-50, max=-180, radius=3, target=1, shootEffect=burstarrow, areaEffect=firearea
-- name=firefield, interval=2000, chance=10, range=7, radius=2, target=1, shootEffect=fire
-- name=energy, interval=2000, chance=10, min=-150, max=-230, length=8, areaEffect=bigclouds
-- name=speed, interval=2000, chance=15, range=7, duration=20000, speedchange=-600, areaEffect=redshimmer
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=20, min=100, max=225, areaEffect=blueshimmer
-- name=invisible, interval=2000, chance=20, duration=10000, areaEffect=blueshimmer
--]]

monster:register()
