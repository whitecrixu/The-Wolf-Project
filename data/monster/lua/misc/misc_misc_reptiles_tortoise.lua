-- Tortoise
-- Auto-converted from XML

local monster = Game.createMonsterType("Tortoise")
if not monster then return end

monster:name("Tortoise")
monster:nameDescription("a tortoise")
monster:health(185)
monster:maxHealth(185)
monster:experience(90)
monster:speed(200)
monster:race(RACE_BLOOD)
monster:manaCost(445)
monster:corpseId(6072)
monster:outfit({lookType = 197})
monster:defense(30)
monster:armor(30)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isConvinceable(true)
monster:pushable(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 35},
    {type = COMBAT_ICEDAMAGE, percent = 20},
    {type = COMBAT_EARTHDAMAGE, percent = 20},
    {type = COMBAT_FIREDAMAGE, percent = -10},
})

-- Loot
monster:loot({
    {id = 2148, chance = 59000, maxCount = 30},
    {id = 2510, chance = 2850},
    {id = 2667, chance = 4600},
    {id = 5678, chance = 770, maxCount = 2},
    {id = 6131, chance = 200},
    {id = 5899, chance = 1300},
    {id = 2417, chance = 730},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=40, attack=20
--]]

monster:register()
