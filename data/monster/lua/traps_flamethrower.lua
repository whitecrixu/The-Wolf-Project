-- Flamethrower
-- Auto-converted from XML

local monster = Game.createMonsterType("Flamethrower")
if not monster then return end

monster:name("Flamethrower")
monster:nameDescription("a flamethrower")
monster:health(9950)
monster:maxHealth(9950)
monster:experience(0)
monster:speed(0)
monster:race(RACE_UNDEAD)
monster:outfit({lookTypeEx = 1551})
monster:defense(0)
monster:armor(0)
monster:runHealth(100)

-- Flags
monster:attackable(false)
monster:hostile(true)
monster:pushable(false)
monster:canPushCreatures(true)
monster:hiddenHealth(true)
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
-- name=fire, interval=2000, chance=100, range=7, max=-100, shootEffect=fire
--]]

monster:register()
