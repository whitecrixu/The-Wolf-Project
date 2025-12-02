-- Jaul
-- Auto-converted from XML

local monster = Game.createMonsterType("Jaul")
if not monster then return end

monster:name("Jaul")
monster:nameDescription("a jaul")
monster:health(100000)
monster:maxHealth(100000)
monster:experience(30000)
monster:speed(560)
monster:race(RACE_BLOOD)
monster:corpseId(15220)
monster:outfit({lookType = 444})
monster:defense(40)
monster:armor(40)
monster:targetDistance(0)
monster:runHealth(60)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)

-- Resistances
monster:elements({
    {type = COMBAT_DEATHDAMAGE, percent = -1},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FREEZING, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_DROWN, immunity = true},
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "QJELL AFAR GOU JEY!!", yell = false},
    {text = "DIE!! KENH!!", yell = false},
})

-- Loot
monster:loot({
    {id = 15413, chance = 50000},
    {id = 15408, chance = 33333},
    {id = 15404, chance = 25000},
    {id = 15406, chance = 25000},
    {id = 15407, chance = 20000},
    {id = 15410, chance = 14285},
    {id = 15414, chance = 14285},
    {id = 15412, chance = 7142},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-2000
-- name=fire, interval=2200, chance=19, range=7, max=-1000, radius=7, target=1, shootEffect=fire, areaEffect=firearea
-- name=manadrain, interval=3000, chance=32, range=7, min=-200, max=-800, radius=7, target=1, areaEffect=mortarea
-- name=earth, interval=1300, chance=27, max=-600, radius=3, areaEffect=explosionarea
-- name=death, interval=1200, chance=6, min=-300, max=-900, length=8, areaEffect=mortarea
-- name=fire, interval=1000, chance=5, min=-500, max=-1000, length=8, areaEffect=fire
-- name=ice, interval=1000, chance=5, min=-1000, max=-2000, length=8, areaEffect=icearea
-- name=lifedrain, interval=4000, chance=10, min=-500, max=-1000, length=8, spread=3, areaEffect=watersplash
-- name=speed, interval=1900, chance=14, range=7, radius=1, target=1, duration=15000, speedchange=-600
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=25, min=1000, max=2300, areaEffect=blueshimmer
-- name=healing, interval=5500, chance=10, min=14000, max=21000, areaEffect=blueshimmer
--]]

monster:register()
