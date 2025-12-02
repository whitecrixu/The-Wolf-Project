-- Hive Pore
-- Auto-converted from XML

local monster = Game.createMonsterType("Hive Pore")
if not monster then return end

monster:name("Hive Pore")
monster:nameDescription("a hive pore")
monster:health(550)
monster:maxHealth(550)
monster:experience(0)
monster:speed(0)
monster:race(RACE_VENOM)
monster:manaCost(355)
monster:outfit({lookTypeEx = 15467})
monster:defense(0)
monster:armor(0)

-- Flags
monster:attackable(false)
monster:hostile(true)
monster:isConvinceable(true)
monster:isIllusionable(true)
monster:pushable(false)
monster:staticAttackChance(90)

-- Immunities
monster:immunities({
    {condition = CONDITION_BLEEDING, immunity = true},
    {condition = CONDITION_ENERGY, immunity = true},
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_FREEZING, immunity = true},
    {condition = CONDITION_DAZZLED, immunity = true},
    {condition = CONDITION_CURSED, immunity = true},
    {condition = CONDITION_LIFEDRAIN, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Summons
monster:summons({
    {name = "Lesser Swarmer", chance = 100, interval = 30000, max = 1},
    {name = "Lesser Swarmer", chance = 100, interval = 30000, max = 1},
    {name = "Lesser Swarmer", chance = 100, interval = 30000, max = 1},
})

-- Defense spells (for reference, implement with spell system)
--[[
-- name=physical, interval=30000, chance=100, radius=3, areaEffect=greenspark
--]]

monster:register()
