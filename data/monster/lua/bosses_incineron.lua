-- Incineron
-- Auto-converted from XML

local monster = Game.createMonsterType("Incineron")
if not monster then return end

monster:name("Incineron")
monster:nameDescription("Incineron")
monster:health(7000)
monster:maxHealth(7000)
monster:experience(3500)
monster:speed(260)
monster:race(RACE_FIRE)
monster:corpseId(6324)
monster:outfit({lookType = 243})
monster:defense(25)
monster:armor(25)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 20},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_FREEZING, immunity = true},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=fire, interval=2000, chance=100, max=-1000, length=8, spread=1, areaEffect=firearea
-- name=fire, interval=2000, chance=100, range=7, max=-395, radius=7, shootEffect=fire, areaEffect=firearea
--]]

monster:register()
