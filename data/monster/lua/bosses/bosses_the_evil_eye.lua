-- The Evil Eye
-- Auto-converted from XML

local monster = Game.createMonsterType("The Evil Eye")
if not monster then return end

monster:name("The Evil Eye")
monster:nameDescription("the Evil Eye")
monster:health(1200)
monster:maxHealth(1200)
monster:experience(500)
monster:speed(240)
monster:race(RACE_BLOOD)
monster:corpseId(6037)
monster:outfit({lookType = 210})
monster:defense(23)
monster:armor(19)
monster:targetDistance(3)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_HOLYDAMAGE, percent = -20},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Inferior creatures, bow before my power!", yell = false},
})

-- Summons
monster:summons({
    {name = "demon skeleton", chance = 13, interval = 1000, max = 5},
    {name = "ghost", chance = 12, interval = 1000, max = 4},
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 45},
    {id = 2445, chance = 1000},
    {id = 2451, chance = 800},
    {id = 3976, chance = 50000, maxCount = 10},
    {id = 5898, chance = 5000},
    {id = 2148, chance = 80000, maxCount = 90},
    {id = 2423, chance = 5000},
    {id = 2391, chance = 1333},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=65, attack=24
-- name=energy, interval=1000, chance=15, range=7, min=-60, max=-130, shootEffect=energy
-- name=fire, interval=1000, chance=13, range=7, min=-85, max=-115, shootEffect=fire
-- name=physical, interval=1000, chance=17, range=7, min=-135, max=-175, shootEffect=suddendeath, areaEffect=mortarea
-- name=poison, interval=1000, chance=15, range=7, min=-40, max=-120, shootEffect=poison
-- name=lifedrain, interval=1000, chance=12, range=7, min=-110, max=-130, areaEffect=redshimmer
-- name=speed, interval=1000, chance=10, range=7, duration=20000, speedchange=-850, areaEffect=redshimmer
-- name=poison, interval=1000, chance=8, min=-35, max=-85, length=8, spread=3, areaEffect=greenbubble
-- name=lifedrain, interval=1000, chance=6, min=-75, max=-85, length=8, spread=3, areaEffect=redshimmer
-- name=manadrain, interval=1000, chance=9, min=-150, max=-250, length=8, spread=3, areaEffect=bluebubble
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=1000, chance=9, min=1, max=219, areaEffect=blueshimmer
--]]

monster:register()
