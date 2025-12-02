-- Sacred Spider
-- Auto-converted from XML

local monster = Game.createMonsterType("Sacred Spider")
if not monster then return end

monster:name("Sacred Spider")
monster:nameDescription("a sacred spider")
monster:health(550)
monster:maxHealth(550)
monster:experience(330)
monster:speed(210)
monster:race(RACE_VENOM)
monster:manaCost(485)
monster:corpseId(6060)
monster:outfit({lookType = 219})
monster:defense(25)
monster:armor(25)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:pushable(false)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = -5},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Loot
monster:loot({
    {id = 2148, chance = 40000, maxCount = 100},
    {id = 2148, chance = 50000, maxCount = 19},
    {id = 8859, chance = 25000},
    {id = 2159, chance = 7142, maxCount = 4},
    {id = 2463, chance = 4761},
    {id = 9971, chance = 95},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-160
-- name=earth, interval=2000, chance=20, range=7, min=-50, max=-80, shootEffect=poison
--]]

monster:register()
