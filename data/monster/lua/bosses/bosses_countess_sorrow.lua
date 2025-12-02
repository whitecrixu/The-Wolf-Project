-- Countess Sorrow
-- Auto-converted from XML

local monster = Game.createMonsterType("Countess Sorrow")
if not monster then return end

monster:name("Countess Sorrow")
monster:nameDescription("a countess sorrow")
monster:health(7200)
monster:maxHealth(7200)
monster:experience(5150)
monster:speed(250)
monster:race(RACE_UNDEAD)
monster:corpseId(6344)
monster:outfit({lookType = 241, lookHead = 20})
monster:defense(20)
monster:armor(25)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Immunities
monster:immunities({
    {condition = CONDITION_BLEEDING, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_FREEZING, immunity = true},
    {condition = CONDITION_LIFEDRAIN, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Loot
monster:loot({
    {id = 6536, chance = 100000},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=70, attack=90
-- name=poison, interval=1000, chance=10, range=7, min=-150, max=-350, radius=4, target=1, shootEffect=poison, areaEffect=poison
-- name=poisonfield, interval=1000, chance=17, range=7, radius=3, target=1, shootEffect=poison
-- name=manadrain, interval=1000, chance=25, range=7, min=-100, max=-400, areaEffect=redshimmer
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=1000, chance=50, min=409, max=812, areaEffect=blueshimmer
--]]

monster:register()
