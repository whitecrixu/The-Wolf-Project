-- Glitterscale
-- Auto-converted from XML

local monster = Game.createMonsterType("Glitterscale")
if not monster then return end

monster:name("Glitterscale")
monster:nameDescription("glitterscale")
monster:health(1000)
monster:maxHealth(1000)
monster:experience(700)
monster:speed(180)
monster:race(RACE_BLOOD)
monster:corpseId(5973)
monster:outfit({lookType = 34})
monster:defense(18)
monster:armor(25)
monster:runHealth(300)

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
    {type = COMBAT_EARTHDAMAGE, percent = 80},
    {type = COMBAT_ENERGYDAMAGE, percent = 20},
    {type = COMBAT_ICEDAMAGE, percent = -10},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=50, attack=40
-- name=fire, interval=2000, chance=8, min=-90, max=-180, length=8, spread=3, areaEffect=firearea
-- name=fire, interval=2000, chance=12, range=7, min=-70, max=-120, radius=4, target=1, shootEffect=fire, areaEffect=firearea
--]]

monster:register()
