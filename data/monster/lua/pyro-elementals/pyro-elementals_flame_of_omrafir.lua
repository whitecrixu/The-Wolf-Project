-- Flame Of Omrafir
-- Auto-converted from XML

local monster = Game.createMonsterType("Flame Of Omrafir")
if not monster then return end

monster:name("Flame Of Omrafir")
monster:nameDescription("a flame of omrafir")
monster:health(800)
monster:maxHealth(800)
monster:experience(5)
monster:speed(200)
monster:race(RACE_FIRE)
monster:corpseId(8964)
monster:outfit({lookType = 49})
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
    {type = COMBAT_ICEDAMAGE, percent = -25},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_CURSED, immunity = true},
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_LIFEDRAIN, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-100
-- name=fire, interval=2000, chance=20, range=7, min=-45, max=-160, radius=2, target=1, shootEffect=fire, areaEffect=firearea
-- name=firefield, interval=2000, chance=25, range=7, radius=1, target=1, shootEffect=fire
--]]

monster:register()
