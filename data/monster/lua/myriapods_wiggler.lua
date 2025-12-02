-- Wiggler
-- Auto-converted from XML

local monster = Game.createMonsterType("Wiggler")
if not monster then return end

monster:name("Wiggler")
monster:nameDescription("a wiggler")
monster:health(1200)
monster:maxHealth(1200)
monster:experience(900)
monster:speed(220)
monster:race(RACE_VENOM)
monster:corpseId(18483)
monster:outfit({lookType = 510})
monster:defense(15)
monster:armor(15)
monster:runHealth(359)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:pushable(false)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_DEATHDAMAGE, percent = 10},
    {type = COMBAT_ENERGYDAMAGE, percent = 5},
    {type = COMBAT_FIREDAMAGE, percent = -5},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Zzzrp!", yell = false},
    {text = "Crick! Crick!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 100},
    {id = 18304, chance = 15540, maxCount = 5},
    {id = 18436, chance = 15260, maxCount = 5},
    {id = 2152, chance = 14790},
    {id = 2787, chance = 7142, maxCount = 5},
    {id = 7589, chance = 5250},
    {id = 7588, chance = 4930},
    {id = 18416, chance = 3600},
    {id = 5912, chance = 2080},
    {id = 5914, chance = 2160},
    {id = 18421, chance = 2070},
    {id = 2409, chance = 1360},
    {id = 2529, chance = 1320},
    {id = 2181, chance = 850},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=70, attack=50
-- name=earth, interval=2000, chance=10, min=-180, max=-270, length=4, spread=3
-- name=poisoncondition, interval=2000, chance=10, range=7, min=-160, max=-200, shootEffect=poisonarrow, areaEffect=smallplants
-- name=speed, interval=2000, chance=15, length=3, spread=2, duration=30000, speedchange=-700, areaEffect=blackspark
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=speed, interval=2000, chance=15, duration=5000, speedchange=510, areaEffect=redshimmer
--]]

monster:register()
