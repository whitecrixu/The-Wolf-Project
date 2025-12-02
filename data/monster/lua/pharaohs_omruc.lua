-- Omruc
-- Auto-converted from XML

local monster = Game.createMonsterType("Omruc")
if not monster then return end

monster:name("Omruc")
monster:nameDescription("a omruc")
monster:health(4300)
monster:maxHealth(4300)
monster:experience(2950)
monster:speed(370)
monster:race(RACE_UNDEAD)
monster:corpseId(6025)
monster:outfit({lookType = 90})
monster:defense(35)
monster:armor(20)
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
    {condition = CONDITION_CURSED, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Now chhhou shhhee me ... Now chhhou don't!!", yell = false},
    {text = "Chhhhou are marked ashhh my prey.", yell = false},
    {text = "Psssst, I am over chhhere.", yell = false},
})

-- Summons
monster:summons({
    {name = "Stalker", chance = 1000, interval = 2000, max = 1},
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 90},
    {id = 2148, chance = 50000, maxCount = 70},
    {id = 2443, chance = 10000, maxCount = 2},
    {id = 2544, chance = 10000, maxCount = 21},
    {id = 2545, chance = 10000, maxCount = 20},
    {id = 2546, chance = 10000, maxCount = 15},
    {id = 7365, chance = 10000, maxCount = 2},
    {id = 2547, chance = 10000, maxCount = 3},
    {id = 2145, chance = 7000, maxCount = 3},
    {id = 7591, chance = 7000},
    {id = 2165, chance = 5000},
    {id = 2154, chance = 5000},
    {id = 2195, chance = 1500},
    {id = 2444, chance = 300},
    {id = 2352, chance = 100000},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=30, attack=60
-- name=lifedrain, interval=5000, chance=20, range=1, min=-100, max=-250
-- name=poison, interval=2000, chance=20, min=-200, max=-500, shootEffect=poisonarrow
-- name=fire, interval=1000, chance=20, range=3, min=-120, max=-450, shootEffect=burstarrow, areaEffect=explosionarea
-- name=melee, interval=3000, chance=20, min=-150, max=-500, shootEffect=arrow
-- name=speed, interval=1000, chance=25, range=7, duration=50000, speedchange=-900, areaEffect=redshimmer
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=1000, chance=17, min=100, max=200, areaEffect=blueshimmer
-- name=invisible, interval=2000, chance=14, duration=8000, areaEffect=blueshimmer
--]]

monster:register()
