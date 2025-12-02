-- Dreadwing
-- Auto-converted from XML

local monster = Game.createMonsterType("Dreadwing")
if not monster then return end

monster:name("Dreadwing")
monster:nameDescription("Dreadwing")
monster:health(8500)
monster:maxHealth(8500)
monster:experience(3750)
monster:speed(245)
monster:race(RACE_BLOOD)
monster:corpseId(9829)
monster:outfit({lookType = 307})
monster:defense(30)
monster:armor(30)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Immunities
monster:immunities({
    {condition = CONDITION_CURSED, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=40, attack=100
-- name=physical, interval=3000, chance=50, max=-100, radius=7, target=1, areaEffect=whitenote
--]]

monster:register()
