-- Magma Crawler
-- Auto-converted from XML

local monster = Game.createMonsterType("Magma Crawler")
if not monster then return end

monster:name("Magma Crawler")
monster:nameDescription("a magma crawler")
monster:health(4800)
monster:maxHealth(4800)
monster:experience(2700)
monster:speed(220)
monster:race(RACE_FIRE)
monster:corpseId(17336)
monster:outfit({lookType = 492})
monster:defense(45)
monster:armor(45)
monster:targetDistance(4)
monster:runHealth(300)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ICEDAMAGE, percent = 10},
    {type = COMBAT_ENERGYDAMAGE, percent = 10},
    {type = COMBAT_DEATHDAMAGE, percent = 1},
    {type = COMBAT_PHYSICALDAMAGE, percent = 1},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Crrroak!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 199},
    {id = 2152, chance = 100000, maxCount = 5},
    {id = 18425, chance = 12220},
    {id = 18424, chance = 11600},
    {id = 2145, chance = 8800, maxCount = 3},
    {id = 18417, chance = 8500, maxCount = 2},
    {id = 10553, chance = 7810},
    {id = 7591, chance = 7270},
    {id = 18421, chance = 7000},
    {id = 7590, chance = 6500},
    {id = 18304, chance = 5950, maxCount = 10},
    {id = 8921, chance = 4400},
    {id = 5880, chance = 4380},
    {id = 18413, chance = 3930},
    {id = 7890, chance = 3120},
    {id = 5914, chance = 3000},
    {id = 5909, chance = 2310},
    {id = 7891, chance = 1820},
    {id = 13757, chance = 1650},
    {id = 2392, chance = 1630},
    {id = 2167, chance = 1620},
    {id = 2529, chance = 1530},
    {id = 2154, chance = 1160},
    {id = 5911, chance = 970},
    {id = 18409, chance = 670},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-350
-- name=magma crawler soulfire, interval=2000, chance=20
-- name=soulfire, interval=2000, chance=10, range=7, target=1
-- name=fire, interval=2000, chance=10, min=-300, max=-1200, length=8, areaEffect=mortarea
-- name=fire, interval=2000, chance=15, min=-290, max=-700, radius=3, areaEffect=fireattack
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=invisible, interval=2000, chance=10, duration=5000
--]]

monster:register()
