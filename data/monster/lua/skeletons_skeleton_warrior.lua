-- Skeleton Warrior
-- Auto-converted from XML

local monster = Game.createMonsterType("Skeleton Warrior")
if not monster then return end

monster:name("Skeleton Warrior")
monster:nameDescription("a skeleton warrior")
monster:health(45)
monster:maxHealth(45)
monster:experience(65)
monster:speed(150)
monster:race(RACE_UNDEAD)
monster:manaCost(350)
monster:corpseId(5972)
monster:outfit({lookType = 298})
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
    {id = 2148, chance = 43500, maxCount = 10},
    {id = 2230, chance = 50000},
    {id = 2376, chance = 1500},
    {id = 2398, chance = 2000},
    {id = 2787, chance = 24000, maxCount = 3},
    {id = 2789, chance = 1700},
    {id = 12437, chance = 10630},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=20, attack=20
-- name=lifedrain, interval=2000, chance=15, range=1, min=-7, max=-13, areaEffect=redshimmer
--]]

monster:register()
