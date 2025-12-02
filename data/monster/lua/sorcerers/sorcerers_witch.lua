-- Witch
-- Auto-converted from XML

local monster = Game.createMonsterType("Witch")
if not monster then return end

monster:name("Witch")
monster:nameDescription("a witch")
monster:health(300)
monster:maxHealth(300)
monster:experience(120)
monster:speed(195)
monster:race(RACE_BLOOD)
monster:corpseId(20535)
monster:outfit({lookType = 54})
monster:defense(15)
monster:armor(15)
monster:targetDistance(4)
monster:runHealth(30)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:pushable(false)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_EARTHDAMAGE, percent = 20},
    {type = COMBAT_DEATHDAMAGE, percent = -5},
    {type = COMBAT_PHYSICALDAMAGE, percent = -10},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_ENERGY, immunity = true},
})

-- Voices
monster:voices({
    {text = "Horax pokti!", yell = false},
    {text = "Herba budinia ex!", yell = false},
    {text = "Hihihihi!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 64000, maxCount = 40},
    {id = 2687, chance = 29750, maxCount = 8},
    {id = 2643, chance = 4950},
    {id = 13537, chance = 920},
    {id = 2405, chance = 3910},
    {id = 2654, chance = 4870},
    {id = 2651, chance = 2010},
    {id = 2129, chance = 10120},
    {id = 2800, chance = 8950},
    {id = 2199, chance = 1000},
    {id = 2402, chance = 500},
    {id = 2185, chance = 1140},
    {id = 10570, chance = 80},
    {id = 11211, chance = 10},
    {id = 10569, chance = 10000},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-20
-- name=fire, interval=2000, chance=20, range=7, min=-30, max=-75, shootEffect=fire, areaEffect=fire
-- name=firefield, interval=2000, chance=10, range=7, radius=1, target=1, shootEffect=fire
-- name=outfit, interval=2000, chance=1, range=5, target=1, duration=2000
--]]

monster:register()
