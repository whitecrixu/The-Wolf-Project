-- Grave Guard
-- Auto-converted from XML

local monster = Game.createMonsterType("Grave Guard")
if not monster then return end

monster:name("Grave Guard")
monster:nameDescription("a grave guard")
monster:health(720)
monster:maxHealth(720)
monster:experience(485)
monster:speed(200)
monster:race(RACE_UNDEAD)
monster:corpseId(13975)
monster:outfit({lookType = 234})
monster:defense(20)
monster:armor(20)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 20},
    {type = COMBAT_ICEDAMAGE, percent = -10},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true},
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 100},
    {id = 2148, chance = 50000, maxCount = 30},
    {id = 2747, chance = 70000},
    {id = 7620, chance = 20000},
    {id = 7618, chance = 20000},
    {id = 2159, chance = 4166},
    {id = 6300, chance = 1754},
    {id = 2440, chance = 1170},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=55, attack=45
-- name=physical, interval=2000, chance=5, radius=1, areaEffect=bluenote
--]]

monster:register()
