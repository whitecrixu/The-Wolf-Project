-- The Handmaiden
-- Auto-converted from XML

local monster = Game.createMonsterType("The Handmaiden")
if not monster then return end

monster:name("The Handmaiden")
monster:nameDescription("the handmaiden")
monster:health(14500)
monster:maxHealth(14500)
monster:experience(3850)
monster:speed(450)
monster:race(RACE_BLOOD)
monster:corpseId(6312)
monster:outfit({lookType = 230})
monster:defense(35)
monster:armor(25)
monster:runHealth(3100)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(70)

-- Immunities
monster:immunities({
    {condition = CONDITION_ENERGY, immunity = true},
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_FREEZING, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_LIFEDRAIN, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Loot
monster:loot({
    {id = 6539, chance = 35000},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-800
-- name=manadrain, interval=2000, chance=25, range=7, min=-150, max=-800, areaEffect=blueshimmer
-- name=drunk, interval=1000, chance=12, range=1, target=1
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=speed, interval=3000, chance=12, duration=8000, speedchange=380, areaEffect=redshimmer
-- name=invisible, interval=4000, chance=50, duration=6000, areaEffect=redshimmer
-- name=healing, interval=2000, chance=50, min=100, max=250, areaEffect=blueshimmer
-- name=speed, interval=1000, chance=35, duration=30000, speedchange=370, areaEffect=redshimmer
--]]

monster:register()
