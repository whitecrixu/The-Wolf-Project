-- Tremorak
-- Auto-converted from XML

local monster = Game.createMonsterType("Tremorak")
if not monster then return end

monster:name("Tremorak")
monster:nameDescription("Tremorak")
monster:health(10000)
monster:maxHealth(10000)
monster:experience(1300)
monster:speed(290)
monster:race(RACE_UNDEAD)
monster:corpseId(8933)
monster:outfit({lookType = 285})
monster:defense(30)
monster:armor(30)
monster:runHealth(1)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:staticAttackChance(80)

-- Resistances
monster:elements({
    {type = COMBAT_DEATHDAMAGE, percent = 45},
    {type = COMBAT_ICEDAMAGE, percent = 20},
    {type = COMBAT_PHYSICALDAMAGE, percent = 50},
    {type = COMBAT_HOLYDAMAGE, percent = 50},
    {type = COMBAT_FIREDAMAGE, percent = -15},
    {type = COMBAT_ENERGYDAMAGE, percent = 85},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "STOMP STOMP!", yell = true},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=36, attack=50
-- name=earth, interval=2000, chance=16, max=-255, radius=7, areaEffect=groundshaker
-- name=earth, interval=2000, chance=16, max=-405, length=8, areaEffect=groundshaker
-- name=poisoncondition, interval=2000, chance=16, range=7, target=1, shootEffect=poison
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=16, min=75, max=200, areaEffect=blueshimmer
--]]

monster:register()
