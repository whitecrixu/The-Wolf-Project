-- Lizard Noble
-- Auto-converted from XML

local monster = Game.createMonsterType("Lizard Noble")
if not monster then return end

monster:name("Lizard Noble")
monster:nameDescription("a lizard noble")
monster:health(7000)
monster:maxHealth(7000)
monster:experience(2000)
monster:speed(200)
monster:race(RACE_BLOOD)
monster:corpseId(6041)
monster:outfit({lookType = 115})
monster:defense(15)
monster:armor(15)
monster:targetDistance(4)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:pushable(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = 90},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
})

-- Voices
monster:voices({
    {text = "Where are zhe guardz when you need zhem!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 91300, maxCount = 100},
    {id = 2152, chance = 10000, maxCount = 20},
    {id = 7588, chance = 2550},
    {id = 2147, chance = 7100, maxCount = 5},
    {id = 7591, chance = 2900},
    {id = 5876, chance = 220},
    {id = 5881, chance = 650},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=20, attack=20
-- name=earth, interval=2000, chance=25, range=7, min=-120, max=-250, shootEffect=poison, areaEffect=poison
-- name=manadrain, interval=2000, chance=10, range=7, max=-100, areaEffect=blueshimmer
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=50, min=200, max=250, areaEffect=blueshimmer
--]]

monster:register()
