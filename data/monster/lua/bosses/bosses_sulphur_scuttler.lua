-- Sulphur Scuttler
-- Auto-converted from XML

local monster = Game.createMonsterType("Sulphur Scuttler")
if not monster then return end

monster:name("Sulphur Scuttler")
monster:nameDescription("a sulphur scuttler")
monster:health(1300)
monster:maxHealth(1300)
monster:experience(900)
monster:speed(200)
monster:race(RACE_VENOM)
monster:corpseId(12527)
monster:outfit({lookType = 352})
monster:defense(25)
monster:armor(25)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = -10},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_LIFEDRAIN, immunity = true},
    {condition = CONDITION_CURSED, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Chrrr!", yell = false},
})

-- Loot
monster:loot({
    {id = 2152, chance = 98330, maxCount = 10},
    {id = 10557, chance = 50000},
    {id = 11222, chance = 75000},
    {id = 11232, chance = 96670},
    {id = 12659, chance = 100000},
    {id = 7589, chance = 71670},
    {id = 7588, chance = 75000},
    {id = 12658, chance = 100000},
    {id = 2149, chance = 65000, maxCount = 4},
    {id = 5904, chance = 81670},
    {id = 2165, chance = 46670},
    {id = 2171, chance = 20000},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-200
-- name=speed, interval=2000, chance=20, range=7, duration=10000, speedchange=-600, shootEffect=death, areaEffect=mortarea
-- name=earth, interval=2000, chance=5, max=-394, radius=6, areaEffect=smallplants
-- name=manadrain, interval=2000, chance=10, max=-200, length=6, areaEffect=greenspark
-- name=poison, interval=2000, chance=15, max=-120, length=8, spread=3, areaEffect=yellowbubble
--]]

monster:register()
