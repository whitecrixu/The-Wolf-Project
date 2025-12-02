-- Zoralurk
-- Auto-converted from XML

local monster = Game.createMonsterType("Zoralurk")
if not monster then return end

monster:name("Zoralurk")
monster:nameDescription("Zoralurk")
monster:health(55000)
monster:maxHealth(55000)
monster:experience(30000)
monster:speed(400)
monster:race(RACE_UNDEAD)
monster:corpseId(6068)
monster:outfit({lookType = 12, lookBody = 98, lookLegs = 86, lookFeet = 94})
monster:defense(65)
monster:armor(55)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(98)

-- Immunities
monster:immunities({
    {condition = CONDITION_ENERGY, immunity = true},
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_LIFEDRAIN, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "I AM ZORALURK, THE DEMON WITH A THOUSAND FACES!", yell = true},
    {text = "BRING IT, COCKROACHES!", yell = true},
})

-- Summons
monster:summons({
    {name = "demon", chance = 50, interval = 4000, max = 1},
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 100},
    {id = 2148, chance = 50000, maxCount = 90},
    {id = 2143, chance = 10000, maxCount = 5},
    {id = 2407, chance = 20000},
    {id = 6530, chance = 16000},
    {id = 2641, chance = 7000},
    {id = 2407, chance = 20000},
    {id = 2393, chance = 60000},
    {id = 2195, chance = 16033},
    {id = 2408, chance = 6000},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=140, attack=135
-- name=energy, interval=1000, chance=12, min=-600, max=-900, radius=7, areaEffect=energy
-- name=earth, interval=1000, chance=12, min=-400, max=-800, radius=7, areaEffect=smallplants
-- name=manadrain, interval=2000, chance=25, range=7, min=-500, max=-800, areaEffect=blueshimmer
-- name=fire, interval=3000, chance=35, range=7, min=-200, max=-600, radius=7, target=1, shootEffect=fire, areaEffect=firearea
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=35, min=300, max=800, areaEffect=blueshimmer
-- name=speed, interval=4000, chance=80, duration=6000, speedchange=440, areaEffect=redshimmer
-- name=outfit, interval=2000, chance=10, duration=10000, areaEffect=dice
-- name=outfit, interval=2000, chance=10, duration=10000, areaEffect=dice
-- name=outfit, interval=2000, chance=10, duration=10000, areaEffect=dice
-- name=outfit, interval=2000, chance=10, duration=10000, areaEffect=dice
-- name=outfit, interval=2000, chance=10, duration=10000, areaEffect=dice
--]]

monster:register()
