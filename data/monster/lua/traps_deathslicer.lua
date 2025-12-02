-- Deathslicer
-- Auto-converted from XML

local monster = Game.createMonsterType("Deathslicer")
if not monster then return end

monster:name("Deathslicer")
monster:nameDescription("a deathslicer")
monster:health(2000)
monster:maxHealth(2000)
monster:experience(320)
monster:speed(200)
monster:race(RACE_UNDEAD)
monster:corpseId(2253)
monster:outfit({lookType = 102})
monster:defense(199)
monster:armor(199)
monster:runHealth(20)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Immunities
monster:immunities({
    {condition = CONDITION_BLEEDING, immunity = true},
    {condition = CONDITION_ENERGY, immunity = true},
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_FREEZING, immunity = true},
    {condition = CONDITION_DAZZLED, immunity = true},
    {condition = CONDITION_CURSED, immunity = true},
    {condition = CONDITION_LIFEDRAIN, immunity = true},
    {condition = CONDITION_MANADRAIN, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=190, attack=50
-- name=energy, interval=2000, chance=25, min=-200, max=-400, radius=2, areaEffect=yellowspark
--]]

monster:register()
