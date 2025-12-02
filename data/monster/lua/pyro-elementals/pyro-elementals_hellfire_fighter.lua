-- Hellfire Fighter
-- Auto-converted from XML

local monster = Game.createMonsterType("Hellfire Fighter")
if not monster then return end

monster:name("Hellfire Fighter")
monster:nameDescription("a hellfire fighter")
monster:health(3800)
monster:maxHealth(3800)
monster:experience(3900)
monster:speed(220)
monster:race(RACE_FIRE)
monster:corpseId(6324)
monster:outfit({lookType = 243})
monster:defense(35)
monster:armor(35)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 25},
    {type = COMBAT_PHYSICALDAMAGE, percent = 50},
    {type = COMBAT_DEATHDAMAGE, percent = 20},
    {type = COMBAT_ICEDAMAGE, percent = -25},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 100},
    {id = 2148, chance = 40000, maxCount = 100},
    {id = 2148, chance = 10000, maxCount = 46},
    {id = 2260, chance = 30000, maxCount = 2},
    {id = 2172, chance = 1000},
    {id = 2239, chance = 50000},
    {id = 6500, chance = 14500},
    {id = 2127, chance = 2200},
    {id = 2392, chance = 4140},
    {id = 7894, chance = 730},
    {id = 7899, chance = 470},
    {id = 2145, chance = 1400},
    {id = 5944, chance = 12150},
    {id = 2187, chance = 9450},
    {id = 2432, chance = 440},
    {id = 2136, chance = 190},
    {id = 13757, chance = 670},
    {id = 10553, chance = 9570},
    {id = 10581, chance = 5060},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=120, attack=80
-- name=firefield, interval=2000, chance=10, range=7, radius=3, shootEffect=fire
-- name=fire, interval=2000, chance=10, min=-392, max=-1500, length=8, areaEffect=fireattack
-- name=fire, interval=2000, chance=15, range=7, min=-60, max=-330, radius=3, areaEffect=fire
-- name=hellfire fighter soulfire, interval=2000, chance=15
--]]

monster:register()
