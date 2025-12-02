-- Fire Overlord
-- Auto-converted from XML

local monster = Game.createMonsterType("Fire Overlord")
if not monster then return end

monster:name("Fire Overlord")
monster:nameDescription("a fire overlord")
monster:health(4000)
monster:maxHealth(4000)
monster:experience(2800)
monster:speed(300)
monster:race(RACE_FIRE)
monster:corpseId(8964)
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
    {type = COMBAT_PHYSICALDAMAGE, percent = 1},
    {type = COMBAT_DEATHDAMAGE, percent = 20},
    {type = COMBAT_ENERGYDAMAGE, percent = 20},
    {type = COMBAT_EARTHDAMAGE, percent = 80},
    {type = COMBAT_ICEDAMAGE, percent = -25},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true},
})

-- Loot
monster:loot({
    {id = 8304, chance = 100000},
    {id = 10553, chance = 100000},
    {id = 2148, chance = 50000, maxCount = 75},
    {id = 2152, chance = 50000, maxCount = 3},
    {id = 7899, chance = 819},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=80, attack=100
-- name=firefield, interval=2000, chance=15, range=7, radius=4, target=1, shootEffect=fire
-- name=fire, interval=1000, chance=15, min=-300, max=-900, length=1, areaEffect=fireattack
-- name=fire, interval=1000, chance=13, min=-200, max=-350, radius=4, target=1, areaEffect=firearea
--]]

monster:register()
