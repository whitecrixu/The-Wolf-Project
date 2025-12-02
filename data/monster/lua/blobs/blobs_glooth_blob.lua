-- Glooth Blob
-- Auto-converted from XML

local monster = Game.createMonsterType("Glooth Blob")
if not monster then return end

monster:name("Glooth Blob")
monster:nameDescription("a glooth blob")
monster:health(750)
monster:maxHealth(750)
monster:experience(700)
monster:speed(160)
monster:race(RACE_VENOM)
monster:corpseId(23479)
monster:outfit({lookType = 614})
monster:defense(10)
monster:armor(10)

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
    {type = COMBAT_ENERGYDAMAGE, percent = -10},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_CURSED, immunity = true},
    {condition = CONDITION_LIFEDRAIN, immunity = true},
})

-- Summons
monster:summons({
    {name = "Glooth Blob", chance = 6, interval = 2000, max = 1},
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 70},
    {id = 23553, chance = 15410},
    {id = 2146, chance = 3310, maxCount = 2},
    {id = 9970, chance = 3420, maxCount = 2},
    {id = 23554, chance = 400},
    {id = 23550, chance = 510},
    {id = 23549, chance = 580},
    {id = 23551, chance = 560},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=45, attack=40
-- name=poisoncondition, interval=2000, chance=13, min=-400, max=-480, radius=4, areaEffect=poison
-- name=poison, interval=2000, chance=11, min=-85, max=-180, radius=3, target=1, areaEffect=greenbubble, shootEffect=envenomedarrow
-- name=poison, interval=2000, chance=10, range=7, min=-60, max=-105, target=1, areaEffect=poison, shootEffect=poison
--]]

monster:register()
