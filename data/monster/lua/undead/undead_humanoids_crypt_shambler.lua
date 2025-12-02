-- Crypt Shambler
-- Auto-converted from XML

local monster = Game.createMonsterType("Crypt Shambler")
if not monster then return end

monster:name("Crypt Shambler")
monster:nameDescription("a crypt shambler")
monster:health(330)
monster:maxHealth(330)
monster:experience(195)
monster:speed(170)
monster:race(RACE_UNDEAD)
monster:manaCost(580)
monster:corpseId(6029)
monster:outfit({lookType = 100})
monster:defense(25)
monster:armor(25)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isConvinceable(true)
monster:isIllusionable(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_HOLYDAMAGE, percent = -25},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_LIFEDRAIN, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_CURSED, immunity = true},
    {condition = CONDITION_DROWN, immunity = true},
})

-- Voices
monster:voices({
    {text = "Aaaaahhhh!", yell = false},
    {text = "Hoooohhh!", yell = false},
    {text = "Uhhhhhhh!", yell = false},
    {text = "Chhhhhhh!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 57000, maxCount = 55},
    {id = 3976, chance = 9000, maxCount = 10},
    {id = 11200, chance = 5000},
    {id = 2230, chance = 5000},
    {id = 2459, chance = 2130},
    {id = 2459, chance = 2000},
    {id = 2227, chance = 1850},
    {id = 2450, chance = 1000},
    {id = 2541, chance = 1000},
    {id = 2399, chance = 910, maxCount = 3},
    {id = 2145, chance = 510},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-140
-- name=lifedrain, interval=2000, chance=15, range=1, min=-28, max=-55, target=1
--]]

monster:register()
