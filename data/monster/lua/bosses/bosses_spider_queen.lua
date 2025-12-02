-- Spider Queen
-- Auto-converted from XML

local monster = Game.createMonsterType("Spider Queen")
if not monster then return end

monster:name("Spider Queen")
monster:nameDescription("a spider queen")
monster:health(500)
monster:maxHealth(500)
monster:experience(240)
monster:speed(280)
monster:race(RACE_VENOM)
monster:corpseId(6060)
monster:outfit({lookType = 219})
monster:defense(0)
monster:armor(0)

-- Flags
monster:attackable(false)
monster:hostile(true)
monster:isIllusionable(true)
monster:pushable(false)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Immunities
monster:immunities({
    {condition = CONDITION_ENERGY, immunity = true},
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_FREEZING, immunity = true},
    {condition = CONDITION_BLEEDING, immunity = true},
    {condition = CONDITION_DROWN, immunity = true},
    {condition = CONDITION_CURSED, immunity = true},
    {condition = CONDITION_DAZZLED, immunity = true},
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=60, attack=40
--]]

monster:register()
