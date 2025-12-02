-- Scarab
-- Auto-converted from XML

local monster = Game.createMonsterType("Scarab")
if not monster then return end

monster:name("Scarab")
monster:nameDescription("a scarab")
monster:health(320)
monster:maxHealth(320)
monster:experience(120)
monster:speed(170)
monster:race(RACE_VENOM)
monster:manaCost(395)
monster:corpseId(6024)
monster:outfit({lookType = 83})
monster:defense(15)
monster:armor(15)
monster:runHealth(80)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isSummonable(true)
monster:isIllusionable(true)
monster:pushable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 10},
    {type = COMBAT_ICEDAMAGE, percent = 20},
    {type = COMBAT_PHYSICALDAMAGE, percent = 15},
    {type = COMBAT_FIREDAMAGE, percent = -18},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
})

-- Loot
monster:loot({
    {id = 2148, chance = 86800, maxCount = 52},
    {id = 2666, chance = 40000, maxCount = 2},
    {id = 10558, chance = 4950},
    {id = 2159, chance = 1098},
    {id = 2150, chance = 540},
    {id = 2149, chance = 413},
    {id = 2439, chance = 245},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=65, attack=20
-- name=earth, interval=2000, chance=10, range=1, max=-35, shootEffect=poison
-- name=poisonfield, interval=2000, chance=10, radius=1
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=speed, interval=2000, chance=15, duration=5000, speedchange=200, areaEffect=redshimmer
--]]

monster:register()
