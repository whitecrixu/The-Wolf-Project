-- Skeleton Elite Warrior
-- Auto-converted from XML

local monster = Game.createMonsterType("Skeleton Elite Warrior")
if not monster then return end

monster:name("Skeleton Elite Warrior")
monster:nameDescription("a skeleton elite warrior")
monster:health(450)
monster:maxHealth(450)
monster:experience(350)
monster:speed(180)
monster:race(RACE_UNDEAD)
monster:corpseId(5972)
monster:outfit({lookType = 298})
monster:defense(35)
monster:armor(35)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_HOLYDAMAGE, percent = -15},
    {type = COMBAT_FIREDAMAGE, percent = 10},
    {type = COMBAT_ICEDAMAGE, percent = 20},
    {type = COMBAT_EARTHDAMAGE, percent = 100},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_CURSED, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
})

-- Voices
monster:voices({
    {text = "Clank! Clank!", yell = false},
    {text = "Death to the living!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 80},
    {id = 2230, chance = 40000},
    {id = 2376, chance = 5000},
    {id = 2398, chance = 5000},
    {id = 2409, chance = 3000},
    {id = 2787, chance = 20000, maxCount = 3},
    {id = 12437, chance = 15000},
    {id = 2465, chance = 3500},
    {id = 2510, chance = 2500},
    {id = 2647, chance = 1500},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=50, attack=60
-- name=physical, interval=2000, chance=15, range=7, min=-30, max=-80, shootEffect=throwingknife
-- name=lifedrain, interval=2000, chance=10, range=1, min=-30, max=-60, areaEffect=redshimmer
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=10, min=20, max=40, areaEffect=blueshimmer
--]]

monster:register()
