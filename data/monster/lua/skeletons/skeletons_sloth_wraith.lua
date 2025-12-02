-- Sloth Wraith
-- Auto-converted from XML

local monster = Game.createMonsterType("Sloth Wraith")
if not monster then return end

monster:name("Sloth Wraith")
monster:nameDescription("a sloth wraith")
monster:health(100)
monster:maxHealth(100)
monster:experience(0)
monster:speed(230)
monster:race(RACE_UNDEAD)
monster:corpseId(6316)
monster:outfit({lookType = 233})
monster:defense(10)
monster:armor(10)

-- Flags
monster:attackable(false)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
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
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_DROWN, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=speed, interval=2000, chance=50, range=7, target=1, duration=3000, speedchange=-300, shootEffect=suddendeath, areaEffect=mortarea
--]]

monster:register()
