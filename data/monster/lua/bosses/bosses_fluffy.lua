-- Fluffy
-- Auto-converted from XML

local monster = Game.createMonsterType("Fluffy")
if not monster then return end

monster:name("Fluffy")
monster:nameDescription("fluffy")
monster:health(4500)
monster:maxHealth(4500)
monster:experience(3550)
monster:speed(310)
monster:race(RACE_BLOOD)
monster:corpseId(6332)
monster:outfit({lookType = 240})
monster:defense(35)
monster:armor(25)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Immunities
monster:immunities({
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Wooof!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 100},
    {id = 2148, chance = 100000, maxCount = 20},
    {id = 5944, chance = 5555},
    {id = 6570, chance = 5538, maxCount = 4},
    {id = 6571, chance = 1538},
    {id = 2671, chance = 50000, maxCount = 8},
    {id = 2230, chance = 25000},
    {id = 6500, chance = 7200},
    {id = 2430, chance = 2857},
    {id = 2383, chance = 2500},
    {id = 6558, chance = 8888},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=1000, chance=100, skill=98, attack=120
-- name=energy, interval=1500, chance=300, min=-100, max=-200, length=8, spread=3, areaEffect=bluebubble
-- name=poison, interval=1000, chance=150, min=-120, max=-300, length=8, spread=3, areaEffect=poison
-- name=physical, interval=1000, chance=25, range=7, min=-105, max=-235, shootEffect=suddendeath
-- name=poison, interval=1000, chance=20, range=7, min=-135, max=-255, radius=6, areaEffect=bluebubble
--]]

monster:register()
