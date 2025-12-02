-- Undead Mine Worker
-- Auto-converted from XML

local monster = Game.createMonsterType("Undead Mine Worker")
if not monster then return end

monster:name("Undead Mine Worker")
monster:nameDescription("a undead mine worker")
monster:health(65)
monster:maxHealth(65)
monster:experience(45)
monster:speed(150)
monster:race(RACE_UNDEAD)
monster:corpseId(5972)
monster:outfit({lookType = 33})
monster:defense(15)
monster:armor(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isSummonable(true)
monster:isConvinceable(true)
monster:pushable(false)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_HOLYDAMAGE, percent = -5},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_CURSED, immunity = true},
})

-- Loot
monster:loot({
    {id = 2148, chance = 73000, maxCount = 10},
    {id = 2230, chance = 42000},
    {id = 2376, chance = 3850},
    {id = 2398, chance = 26900},
    {id = 2787, chance = 15400, maxCount = 3},
    {id = 2789, chance = 3850},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=20, attack=20
-- name=lifedrain, interval=2000, chance=15, range=1, min=-7, max=-13, areaEffect=redshimmer
--]]

monster:register()
