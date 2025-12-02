-- Eye of the Seven
-- Auto-converted from XML

local monster = Game.createMonsterType("Eye of the Seven")
if not monster then return end

monster:name("Eye of the Seven")
monster:nameDescription("an eye of the seven")
monster:health(1)
monster:maxHealth(1)
monster:experience(0)
monster:speed(0)
monster:race(RACE_VENOM)
monster:outfit({lookTypeEx = 1560})
monster:defense(1)
monster:armor(1)

-- Flags
monster:attackable(false)
monster:hostile(true)
monster:pushable(false)
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
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=190, attack=50
-- name=lifedrain, interval=1000, chance=9, range=6, max=-500
--]]

monster:register()
