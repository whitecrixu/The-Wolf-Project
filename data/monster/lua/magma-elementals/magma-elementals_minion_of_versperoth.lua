-- Minion Of Versperoth
-- Auto-converted from XML

local monster = Game.createMonsterType("Minion Of Versperoth")
if not monster then return end

monster:name("Minion Of Versperoth")
monster:nameDescription("a minion of Versperoth")
monster:health(3800)
monster:maxHealth(3800)
monster:experience(2900)
monster:speed(290)
monster:race(RACE_FIRE)
monster:outfit({lookType = 491})
monster:defense(60)
monster:armor(60)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ICEDAMAGE, percent = -5},
    {type = COMBAT_PHYSICALDAMAGE, percent = 1},
    {type = COMBAT_ENERGYDAMAGE, percent = 1},
    {type = COMBAT_DEATHDAMAGE, percent = 1},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Grrrrunt", yell = false},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-390
-- name=fire, interval=2000, chance=15, min=-350, max=-700, length=8, areaEffect=fireattack
-- name=manadrain, interval=2000, chance=10, min=-600, max=-1300, length=8, areaEffect=mortarea
-- name=lava golem soulfire, interval=2000, chance=15
-- name=fire, interval=2000, chance=15, min=-220, max=-350, radius=4, target=1, areaEffect=firearea
-- name=speed, interval=2000, chance=10, length=5, spread=3, duration=10000, speedchange=-300, areaEffect=yellowspark
-- name=fire, interval=2000, chance=30, min=-280, max=-350, radius=3, areaEffect=fire
--]]

monster:register()
