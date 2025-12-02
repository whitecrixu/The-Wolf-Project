-- Ashmunrah
-- Auto-converted from XML

local monster = Game.createMonsterType("Ashmunrah")
if not monster then return end

monster:name("Ashmunrah")
monster:nameDescription("an ashmunrah")
monster:health(5000)
monster:maxHealth(5000)
monster:experience(3100)
monster:speed(320)
monster:race(RACE_UNDEAD)
monster:corpseId(6031)
monster:outfit({lookType = 87})
monster:defense(30)
monster:armor(25)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_HOLYDAMAGE, percent = -17},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_CURSED, immunity = true},
    {condition = CONDITION_LIFEDRAIN, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "No mortal or undead will steal my secrets!", yell = false},
    {text = "Ahhhh all those long years.", yell = false},
})

-- Summons
monster:summons({
    {name = "Ancient Scarab", chance = 2000, interval = 1000, max = 2},
    {name = "Green Djinn", chance = 1000, interval = 1000, max = 2},
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 80},
    {id = 2148, chance = 50000, maxCount = 60},
    {id = 2134, chance = 7000},
    {id = 7590, chance = 1500},
    {id = 2164, chance = 1000},
    {id = 2487, chance = 80000},
    {id = 2140, chance = 400},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=90, attack=200
-- name=lifedrain, interval=3000, chance=7, range=1, min=-100, max=-700
-- name=poison, interval=2000, chance=12, range=7, min=-100, max=-500, shootEffect=poison, areaEffect=poison
-- name=physical, interval=3000, chance=12, range=7, min=-120, max=-750, shootEffect=energy, areaEffect=mortarea
-- name=speed, interval=3000, chance=25, range=7, duration=50000, speedchange=-650, areaEffect=redshimmer
-- name=lifedrain, interval=2000, chance=18, min=-50, max=-550, length=8, spread=3, areaEffect=yellowbubble
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=1000, chance=20, min=200, max=400, areaEffect=blueshimmer
-- name=invisible, interval=1000, chance=7, duration=2000, areaEffect=blueshimmer
-- name=outfit, interval=1000, chance=3, duration=6000, areaEffect=blueshimmer
--]]

monster:register()
