-- Frost Dragon
-- Auto-converted from XML

local monster = Game.createMonsterType("Frost Dragon")
if not monster then return end

monster:name("Frost Dragon")
monster:nameDescription("a frost dragon")
monster:health(1800)
monster:maxHealth(1800)
monster:experience(2100)
monster:speed(240)
monster:race(RACE_UNDEAD)
monster:corpseId(7091)
monster:outfit({lookType = 248})
monster:defense(45)
monster:armor(45)
monster:runHealth(250)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(70)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 10},
    {type = COMBAT_DEATHDAMAGE, percent = 10},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_LIFEDRAIN, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_FREEZING, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
})

-- Voices
monster:voices({
    {text = "YOU WILL FREEZE!", yell = true},
    {text = "ZCHHHHH!", yell = true},
    {text = "I am so cool", yell = false},
    {text = "Chill out!.", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 33000, maxCount = 100},
    {id = 2148, chance = 33000, maxCount = 100},
    {id = 2148, chance = 33000, maxCount = 42},
    {id = 2672, chance = 80370, maxCount = 5},
    {id = 2547, chance = 6000, maxCount = 6},
    {id = 2796, chance = 12000},
    {id = 1976, chance = 8500},
    {id = 2146, chance = 5200},
    {id = 7441, chance = 4000},
    {id = 2167, chance = 5000},
    {id = 2033, chance = 3000},
    {id = 7290, chance = 550},
    {id = 2177, chance = 520},
    {id = 2492, chance = 80},
    {id = 2479, chance = 450},
    {id = 2498, chance = 210},
    {id = 2528, chance = 340},
    {id = 7402, chance = 120},
    {id = 2396, chance = 350},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=57, attack=67
-- name=lifedrain, interval=2000, chance=10, min=-175, max=-380, length=8, spread=3, areaEffect=poff
-- name=speed, interval=2000, chance=5, radius=3, duration=12000, speedchange=-700, areaEffect=poff
-- name=speed, interval=2000, chance=15, length=7, spread=3, duration=18000, speedchange=-850, areaEffect=iceattack
-- name=ice, interval=2000, chance=5, min=-60, max=-120, radius=3, areaEffect=icetornado
-- name=ice, interval=2000, chance=10, min=-100, max=-240, radius=4, target=1, areaEffect=icearea
-- name=physical, interval=2000, chance=5, max=-220, length=1, areaEffect=poff
-- name=speed, interval=2000, chance=20, radius=4, target=1, duration=12000, speedchange=-600, areaEffect=icearea
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=10, min=150, max=200, areaEffect=blueshimmer
-- name=speed, interval=2000, chance=15, duration=5000, speedchange=290, areaEffect=redshimmer
--]]

monster:register()
