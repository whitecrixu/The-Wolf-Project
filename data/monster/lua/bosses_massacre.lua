-- Massacre
-- Auto-converted from XML

local monster = Game.createMonsterType("Massacre")
if not monster then return end

monster:name("Massacre")
monster:nameDescription("the massacre")
monster:health(30000)
monster:maxHealth(30000)
monster:experience(9800)
monster:speed(390)
monster:race(RACE_BLOOD)
monster:corpseId(6336)
monster:outfit({lookType = 244})
monster:defense(15)
monster:armor(15)

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
    {condition = CONDITION_ENERGY, immunity = true},
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_LIFEDRAIN, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Loot
monster:loot({
    {id = 6540, chance = 100000},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=150, attack=150
-- name=physical, interval=2000, chance=24, range=7, min=-280, max=-500, shootEffect=largerock
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=speed, interval=2000, chance=12, duration=4000, speedchange=380, areaEffect=redshimmer
--]]

monster:register()
