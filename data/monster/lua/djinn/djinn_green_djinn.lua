-- Green Djinn
-- Auto-converted from XML

local monster = Game.createMonsterType("Green Djinn")
if not monster then return end

monster:name("Green Djinn")
monster:nameDescription("a green djinn")
monster:health(330)
monster:maxHealth(330)
monster:experience(215)
monster:speed(180)
monster:race(RACE_BLOOD)
monster:corpseId(6016)
monster:outfit({lookType = 51})
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
    {type = COMBAT_FIREDAMAGE, percent = 80},
    {type = COMBAT_ENERGYDAMAGE, percent = 50},
    {type = COMBAT_PHYSICALDAMAGE, percent = 20},
    {type = COMBAT_DEATHDAMAGE, percent = 20},
    {type = COMBAT_ICEDAMAGE, percent = -10},
    {type = COMBAT_HOLYDAMAGE, percent = -13},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "I grant you a deathwish!", yell = false},
    {text = "Muhahahaha!", yell = false},
    {text = "I wish you a merry trip to hell!", yell = false},
    {text = "Good wishes are for fairytales", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 41000, maxCount = 70},
    {id = 2148, chance = 51000, maxCount = 45},
    {id = 2696, chance = 23500},
    {id = 2747, chance = 1000},
    {id = 7378, chance = 4870, maxCount = 2},
    {id = 2062, chance = 830},
    {id = 1965, chance = 2280},
    {id = 2149, chance = 2960, maxCount = 4},
    {id = 7620, chance = 490},
    {id = 5910, chance = 2000},
    {id = 2663, chance = 140},
    {id = 12412, chance = 2210},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=45, attack=40
-- name=fire, interval=2000, chance=15, range=7, min=-45, max=-80, shootEffect=fire
-- name=death, interval=2000, chance=10, range=7, min=-50, max=-105, radius=1, target=1, shootEffect=suddendeath, areaEffect=smallclouds
-- name=drunk, interval=2000, chance=10, range=7, duration=5000, shootEffect=energy
-- name=outfit, interval=2000, chance=1, range=7, duration=4000, areaEffect=blueshimmer
-- name=djinn electrify, interval=2000, chance=15, range=5
-- name=djinn cancel invisibility, interval=2000, chance=10
--]]

monster:register()
