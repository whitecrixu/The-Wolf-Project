-- Shard Of Corruption
-- Auto-converted from XML

local monster = Game.createMonsterType("Shard Of Corruption")
if not monster then return end

monster:name("Shard Of Corruption")
monster:nameDescription("a shard of corruption")
monster:health(600)
monster:maxHealth(600)
monster:experience(5)
monster:speed(180)
monster:race(RACE_UNDEAD)
monster:manaCost(590)
monster:corpseId(6005)
monster:outfit({lookType = 67})
monster:defense(20)
monster:armor(20)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isSummonable(true)
monster:isConvinceable(true)
monster:isIllusionable(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 60},
    {type = COMBAT_FIREDAMAGE, percent = 30},
    {type = COMBAT_ENERGYDAMAGE, percent = 25},
    {type = COMBAT_ICEDAMAGE, percent = -15},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_DROWN, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-150, skill=45
-- name=earth, interval=2000, chance=10, range=7, max=-115, target=1, shootEffect=smallearth, areaEffect=greenbubble
--]]

monster:register()
