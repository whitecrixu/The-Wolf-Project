-- Evil Sheep
-- Auto-converted from XML

local monster = Game.createMonsterType("Evil Sheep")
if not monster then return end

monster:name("Evil Sheep")
monster:nameDescription("an evil sheep")
monster:health(350)
monster:maxHealth(350)
monster:experience(240)
monster:speed(250)
monster:race(RACE_BLOOD)
monster:corpseId(5991)
monster:outfit({lookType = 14})
monster:defense(35)
monster:armor(30)
monster:runHealth(20)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = -10},
    {type = COMBAT_ICEDAMAGE, percent = 20},
    {type = COMBAT_PHYSICALDAMAGE, percent = 20},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_LIFEDRAIN, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Grrrr", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 50},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-90
-- name=physical, interval=4000, chance=30, range=7, max=-50, target=1, shootEffect=snowball
--]]

monster:register()
