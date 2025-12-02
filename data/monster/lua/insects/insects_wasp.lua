-- Wasp
-- Auto-converted from XML

local monster = Game.createMonsterType("Wasp")
if not monster then return end

monster:name("Wasp")
monster:nameDescription("a wasp")
monster:health(35)
monster:maxHealth(35)
monster:experience(24)
monster:speed(260)
monster:race(RACE_VENOM)
monster:manaCost(280)
monster:corpseId(5989)
monster:outfit({lookType = 44})
monster:defense(10)
monster:armor(10)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isSummonable(true)
monster:isIllusionable(true)
monster:pushable(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = -10},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_POISON, immunity = true},
})

-- Voices
monster:voices({
    {text = "Bssssss", yell = false},
})

-- Loot
monster:loot({
    {id = 5902, chance = 3000},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=1500, chance=100, skill=30, attack=10
--]]

monster:register()
