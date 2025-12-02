-- Giant Spider
-- Auto-converted from XML

local monster = Game.createMonsterType("Giant Spider")
if not monster then return end

monster:name("Giant Spider")
monster:nameDescription("a giant spider")
monster:health(1300)
monster:maxHealth(1300)
monster:experience(900)
monster:speed(230)
monster:race(RACE_VENOM)
monster:corpseId(5977)
monster:outfit({lookType = 38})
monster:defense(25)
monster:armor(25)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(70)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 20},
    {type = COMBAT_ICEDAMAGE, percent = 20},
    {type = COMBAT_FIREDAMAGE, percent = -10},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
})

-- Summons
monster:summons({
    {name = "Poison Spider", chance = 10, interval = 2000, max = 2},
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 100},
    {id = 2148, chance = 50000, maxCount = 95},
    {id = 2545, chance = 12500, maxCount = 12},
    {id = 2647, chance = 8333},
    {id = 2463, chance = 8333},
    {id = 2377, chance = 5000},
    {id = 2457, chance = 4545},
    {id = 7588, chance = 3571},
    {id = 5879, chance = 2140},
    {id = 2477, chance = 870},
    {id = 2169, chance = 710},
    {id = 2171, chance = 280},
    {id = 2476, chance = 530},
    {id = 7901, chance = 220},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-300
-- name=poisonfield, interval=2000, chance=10, range=7, radius=1, target=1, shootEffect=poison
-- name=earth, interval=2000, chance=10, range=7, min=-40, max=-70, radius=1, target=1, shootEffect=poison
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=speed, interval=2000, chance=15, duration=5000, speedchange=390, areaEffect=redshimmer
--]]

monster:register()
