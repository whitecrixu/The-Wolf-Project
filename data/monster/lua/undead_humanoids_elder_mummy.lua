-- Elder Mummy
-- Auto-converted from XML

local monster = Game.createMonsterType("Elder Mummy")
if not monster then return end

monster:name("Elder Mummy")
monster:nameDescription("an elder mummy")
monster:health(850)
monster:maxHealth(850)
monster:experience(560)
monster:speed(180)
monster:race(RACE_UNDEAD)
monster:corpseId(6004)
monster:outfit({lookType = 65, lookHead = 20, lookBody = 30, lookLegs = 40, lookFeet = 50})
monster:defense(30)
monster:armor(30)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:pushable(false)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ICEDAMAGE, percent = 20},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_CURSED, immunity = true},
    {condition = CONDITION_LIFEDRAIN, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Loot
monster:loot({
    {id = 2148, chance = 87000, maxCount = 160},
    {id = 3976, chance = 20000, maxCount = 3},
    {id = 12422, chance = 12600},
    {id = 10566, chance = 10000},
    {id = 2159, chance = 10000, maxCount = 3},
    {id = 2162, chance = 6000},
    {id = 2161, chance = 4500},
    {id = 2134, chance = 4000},
    {id = 13472, chance = 2400},
    {id = 2124, chance = 1650},
    {id = 2144, chance = 1340},
    {id = 2411, chance = 380},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-120
-- name=death, interval=2000, chance=20, range=1, max=-130, target=1, areaEffect=mortarea
-- name=speed, interval=2000, chance=15, range=7, duration=15000, speedchange=-300, areaEffect=redshimmer
--]]

monster:register()
