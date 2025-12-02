-- Deepling Tyrant
-- Auto-converted from XML

local monster = Game.createMonsterType("Deepling Tyrant")
if not monster then return end

monster:name("Deepling Tyrant")
monster:nameDescription("a deepling tyrant")
monster:health(4900)
monster:maxHealth(4900)
monster:experience(4200)
monster:speed(260)
monster:race(RACE_BLOOD)
monster:corpseId(15188)
monster:outfit({lookType = 442})
monster:defense(45)
monster:armor(45)
monster:targetDistance(0)
monster:runHealth(20)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(70)

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_FREEZING, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_DROWN, immunity = true},
    {condition = CONDITION_FIRE, immunity = true},
})

-- Voices
monster:voices({
    {text = "QJELL NETA NA!!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 97},
    {id = 2148, chance = 100000, maxCount = 97},
    {id = 2152, chance = 70000, maxCount = 4},
    {id = 15455, chance = 29960},
    {id = 15423, chance = 23100},
    {id = 15424, chance = 34770},
    {id = 7590, chance = 32640, maxCount = 3},
    {id = 13870, chance = 28850},
    {id = 7591, chance = 33430, maxCount = 3},
    {id = 15454, chance = 1420},
    {id = 15647, chance = 1540},
    {id = 15645, chance = 510},
    {id = 15545, chance = 80},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=100, attack=91
-- name=physical, interval=2000, chance=20, range=7, max=-375, target=1, shootEffect=whirlwindsword
-- name=drown, interval=2000, chance=15, range=7, min=-180, max=-215, target=1, shootEffect=spear, areaEffect=bluebubble
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=15, min=200, max=400, areaEffect=blueshimmer
--]]

monster:register()
