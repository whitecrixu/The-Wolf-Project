-- Thalas
-- Auto-converted from XML

local monster = Game.createMonsterType("Thalas")
if not monster then return end

monster:name("Thalas")
monster:nameDescription("a thalas")
monster:health(4100)
monster:maxHealth(4100)
monster:experience(2950)
monster:speed(320)
monster:race(RACE_UNDEAD)
monster:corpseId(6025)
monster:outfit({lookType = 90})
monster:defense(30)
monster:armor(20)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = -23},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "You will become a feast for my maggots.", yell = false},
})

-- Summons
monster:summons({
    {name = "Slime2", chance = 30000000, interval = 2000, max = 8},
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 80},
    {id = 2148, chance = 50000, maxCount = 80},
    {id = 2149, chance = 7000, maxCount = 3},
    {id = 2411, chance = 7000},
    {id = 2169, chance = 7000},
    {id = 2165, chance = 1500},
    {id = 7591, chance = 1500},
    {id = 2409, chance = 500},
    {id = 2155, chance = 500},
    {id = 2451, chance = 200},
    {id = 2351, chance = 100000},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, min=-10, skill=140, attack=120
-- name=poison, interval=2000, chance=25, range=7, min=-150, max=-650, shootEffect=poison, areaEffect=poison
-- name=melee, interval=3000, chance=20, range=7, min=-150, max=-650, radius=1, target=1, shootEffect=poison, areaEffect=poison
-- name=speed, interval=1000, chance=6, range=7, duration=20000, speedchange=-800, areaEffect=redshimmer
-- name=poisoncondition, interval=1000, chance=15, min=-34, max=-35, radius=5, areaEffect=poison
-- name=poison, interval=3000, chance=17, min=-55, max=-550, length=8, spread=3, areaEffect=poison
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=1000, chance=20, min=150, max=450, areaEffect=blueshimmer
--]]

monster:register()
