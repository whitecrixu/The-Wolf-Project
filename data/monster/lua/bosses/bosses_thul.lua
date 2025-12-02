-- Thul
-- Auto-converted from XML

local monster = Game.createMonsterType("Thul")
if not monster then return end

monster:name("Thul")
monster:nameDescription("a thul")
monster:health(2950)
monster:maxHealth(2950)
monster:experience(2700)
monster:speed(520)
monster:race(RACE_BLOOD)
monster:manaCost(670)
monster:corpseId(6065)
monster:outfit({lookType = 46})
monster:defense(15)
monster:armor(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = -15},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_LIFEDRAIN, immunity = true},
    {condition = CONDITION_FREEZING, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
})

-- Voices
monster:voices({
    {text = "Gaaahhh!", yell = false},
})

-- Summons
monster:summons({
    {name = "Massive Water Elementals", chance = 10, interval = 2000, max = 2},
})

-- Loot
monster:loot({
    {id = 5895, chance = 100000},
    {id = 2148, chance = 50000, maxCount = 77},
    {id = 7383, chance = 50000},
    {id = 2670, chance = 25000},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=85, attack=285
-- name=physical, interval=2000, chance=25, max=-170, radius=3, areaEffect=blackspark
-- name=poisonfield, interval=2000, chance=19, range=7, radius=3, shootEffect=poison
-- name=speed, interval=2000, chance=18, range=7, duration=5000, speedchange=-360, shootEffect=snowball
-- name=ice, interval=2000, chance=20, range=7, min=-108, max=-137, target=1, shootEffect=ice, areaEffect=icearea
--]]

monster:register()
