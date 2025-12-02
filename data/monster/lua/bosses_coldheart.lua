-- Coldheart
-- Auto-converted from XML

local monster = Game.createMonsterType("Coldheart")
if not monster then return end

monster:name("Coldheart")
monster:nameDescription("Coldheart")
monster:health(7000)
monster:maxHealth(7000)
monster:experience(3500)
monster:speed(195)
monster:race(RACE_UNDEAD)
monster:corpseId(7282)
monster:outfit({lookType = 261})
monster:defense(26)
monster:armor(25)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:staticAttackChance(50)

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_FREEZING, immunity = true},
    {condition = CONDITION_FIRE, immunity = true},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=100, attack=40
-- name=ice, interval=2000, chance=25, max=-710, length=8, areaEffect=icearea
--]]

monster:register()
