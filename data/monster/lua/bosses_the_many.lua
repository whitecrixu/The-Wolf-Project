-- The Many
-- Auto-converted from XML

local monster = Game.createMonsterType("The Many")
if not monster then return end

monster:name("The Many")
monster:nameDescription("the many")
monster:health(4600)
monster:maxHealth(4600)
monster:experience(4000)
monster:speed(260)
monster:race(RACE_BLOOD)
monster:corpseId(6048)
monster:outfit({lookType = 121})
monster:defense(35)
monster:armor(25)
monster:runHealth(300)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ICEDAMAGE, percent = 50},
    {type = COMBAT_HOLYDAMAGE, percent = 30},
    {type = COMBAT_PHYSICALDAMAGE, percent = -5},
    {type = COMBAT_ENERGYDAMAGE, percent = -10},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_LIFEDRAIN, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
})

-- Voices
monster:voices({
    {text = "FCHHHHH", yell = false},
    {text = "HISSSS", yell = false},
})

-- Loot
monster:loot({
    {id = 7589, chance = 100000, maxCount = 2},
    {id = 2146, chance = 56325, maxCount = 5},
    {id = 9971, chance = 47725, maxCount = 3},
    {id = 2197, chance = 100000},
    {id = 10523, chance = 100000},
    {id = 10219, chance = 75500},
    {id = 2536, chance = 75500},
    {id = 2498, chance = 25500},
    {id = 2475, chance = 75500},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=80, attack=60
-- name=earth, interval=2000, chance=7, min=-65, max=-320, length=8, spread=3, areaEffect=smallplants
-- name=speed, interval=2000, chance=8, range=7, radius=4, target=1, duration=15000, speedchange=-360, shootEffect=poison, areaEffect=greenbubble
-- name=ice, interval=2000, chance=9, min=-100, max=-250, length=8, spread=3, areaEffect=bluebubble
-- name=ice, interval=2000, chance=10, range=7, min=-70, max=-155, target=1, shootEffect=ice, areaEffect=iceattack
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=30, min=420, max=500, areaEffect=blueshimmer
--]]

monster:register()
