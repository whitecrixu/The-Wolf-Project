-- Toad
-- Auto-converted from XML

local monster = Game.createMonsterType("Toad")
if not monster then return end

monster:name("Toad")
monster:nameDescription("a toad")
monster:health(135)
monster:maxHealth(135)
monster:experience(60)
monster:speed(210)
monster:race(RACE_BLOOD)
monster:manaCost(400)
monster:corpseId(6077)
monster:outfit({lookType = 222})
monster:defense(15)
monster:armor(15)
monster:runHealth(10)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isSummonable(true)
monster:isIllusionable(true)
monster:pushable(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_EARTHDAMAGE, percent = 20},
    {type = COMBAT_ICEDAMAGE, percent = 20},
    {type = COMBAT_FIREDAMAGE, percent = -10},
})

-- Voices
monster:voices({
    {text = "Ribbit, ribbit!", yell = false},
    {text = "Ribbit!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 80000, maxCount = 20},
    {id = 2667, chance = 20000},
    {id = 10557, chance = 4761},
    {id = 2398, chance = 2854},
    {id = 2391, chance = 148},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=10, attack=30
-- name=physical, interval=2000, chance=20, range=7, min=-8, max=-17, shootEffect=poison, areaEffect=greenbubble
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=speed, interval=2000, chance=15, duration=5000, speedchange=200, areaEffect=redshimmer
--]]

monster:register()
