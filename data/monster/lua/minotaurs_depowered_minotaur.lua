-- Depowered Minotaur
-- Auto-converted from XML

local monster = Game.createMonsterType("Depowered Minotaur")
if not monster then return end

monster:name("Depowered Minotaur")
monster:nameDescription("a depowered minotaur")
monster:health(1500)
monster:maxHealth(1500)
monster:experience(1100)
monster:speed(170)
monster:race(RACE_BLOOD)
monster:corpseId(5969)
monster:outfit({lookType = 25})
monster:defense(15)
monster:armor(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isSummonable(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = 20},
    {type = COMBAT_HOLYDAMAGE, percent = 10},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 100},
    {id = 2152, chance = 67000, maxCount = 4},
    {id = 2147, chance = 67000},
    {id = 7588, chance = 67000, maxCount = 2},
    {id = 2666, chance = 34000, maxCount = 3},
    {id = 2145, chance = 34000},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-245
--]]

monster:register()
