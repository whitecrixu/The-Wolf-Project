-- Lizard Legionnaire
-- Auto-converted from XML

local monster = Game.createMonsterType("Lizard Legionnaire")
if not monster then return end

monster:name("Lizard Legionnaire")
monster:nameDescription("a lizard legionnaire")
monster:health(1400)
monster:maxHealth(1400)
monster:experience(1100)
monster:speed(230)
monster:race(RACE_BLOOD)
monster:corpseId(11276)
monster:outfit({lookType = 338})
monster:defense(25)
monster:armor(25)
monster:targetDistance(4)
monster:runHealth(10)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:pushable(false)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = 45},
    {type = COMBAT_ICEDAMAGE, percent = -10},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Tssss!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 44000, maxCount = 100},
    {id = 2148, chance = 54000, maxCount = 65},
    {id = 11334, chance = 1940},
    {id = 5881, chance = 980, maxCount = 3},
    {id = 11323, chance = 960},
    {id = 7588, chance = 3880},
    {id = 11335, chance = 14940},
    {id = 5876, chance = 970},
    {id = 11305, chance = 710},
    {id = 11206, chance = 530},
    {id = 11245, chance = 1950},
    {id = 2145, chance = 1001, maxCount = 2},
    {id = 11303, chance = 460},
    {id = 11336, chance = 20},
    {id = 11301, chance = 70},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=50, attack=60
-- name=physical, interval=2000, chance=40, range=7, max=-200, target=1, shootEffect=spear
--]]

monster:register()
