-- Abyssador
-- Auto-converted from XML

local monster = Game.createMonsterType("Abyssador")
if not monster then return end

monster:name("Abyssador")
monster:nameDescription("Abyssador")
monster:health(300000)
monster:maxHealth(300000)
monster:experience(50000)
monster:speed(470)
monster:race(RACE_BLOOD)
monster:corpseId(17413)
monster:outfit({lookType = 495})
monster:defense(20)
monster:armor(15)
monster:targetDistance(0)
monster:runHealth(100)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(50)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 10},
    {type = COMBAT_DEATHDAMAGE, percent = -20},
    {type = COMBAT_ENERGYDAMAGE, percent = -20},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_DROWN, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_OUTFIT, immunity = true},
})

-- Voices
monster:voices({
    {text = "*** BRAINS *** SMALL ***", yell = false},
    {text = "*** LIVE *** DRY ***", yell = false},
    {text = "*** IMPORTANT ***", yell = false},
    {text = "*** FIRE *** HOME *** VICTORY ***", yell = false},
    {text = "*** EXISTENCE *** FUTILE ***", yell = false},
    {text = "*** TIME ***", yell = false},
    {text = "*** STEALTH ***", yell = false},
    {text = "*** DEATH ***", yell = false},
})

-- Loot
monster:loot({
    {id = 18496, chance = 100000},
    {id = 18454, chance = 10000},
    {id = 18465, chance = 8000},
    {id = 18449, chance = 10000},
    {id = 18453, chance = 4500},
    {id = 18451, chance = 5500},
    {id = 18450, chance = 5500},
    {id = 18452, chance = 4500},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2500, chance=100, skill=110, attack=160
-- name=speed, interval=2000, chance=20, range=7, duration=2500, speedchange=-400, shootEffect=earth
-- name=fire, interval=800, chance=10, range=7, min=-820, max=-1250, radius=10, areaEffect=greenspark
-- name=energy, interval=750, chance=10, range=3, min=-650, max=-1300, radius=12, target=1, areaEffect=greenspark
-- name=lifedrain, interval=700, chance=10, range=3, min=-600, max=-1230, radius=4, target=1, shootEffect=poison
-- name=poison, interval=700, chance=12, min=-40, max=-130, radius=3, areaEffect=poison
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=1000, chance=1, max=300000, areaEffect=blueshimmer
-- name=healing, interval=5000, chance=30, min=1000, max=1000, areaEffect=blueshimmer
-- name=invisible, interval=2000, chance=25, duration=3000, areaEffect=blueshimmer
--]]

monster:register()
