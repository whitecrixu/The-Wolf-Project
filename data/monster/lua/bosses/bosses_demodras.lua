-- Demodras
-- Auto-converted from XML

local monster = Game.createMonsterType("Demodras")
if not monster then return end

monster:name("Demodras")
monster:nameDescription("demodras")
monster:health(4500)
monster:maxHealth(4500)
monster:experience(4000)
monster:speed(230)
monster:race(RACE_BLOOD)
monster:corpseId(5984)
monster:outfit({lookType = 204})
monster:defense(25)
monster:armor(35)
monster:runHealth(300)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "I WILL SET THE WORLD IN FIRE!", yell = true},
    {text = "I WILL PROTECT MY BROOD!", yell = true},
})

-- Summons
monster:summons({
    {name = "Dragon", chance = 17, interval = 1000, max = 2},
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 100},
    {id = 2672, chance = 20000, maxCount = 2},
    {id = 2033, chance = 1818},
    {id = 1976, chance = 3333},
    {id = 2413, chance = 5000},
    {id = 2498, chance = 588},
    {id = 2492, chance = 333},
    {id = 2547, chance = 2222, maxCount = 10},
    {id = 2546, chance = 2222, maxCount = 5},
    {id = 2796, chance = 6666},
    {id = 3976, chance = 50000, maxCount = 10},
    {id = 2148, chance = 100000, maxCount = 100},
    {id = 2149, chance = 833, maxCount = 2},
    {id = 2392, chance = 1428},
    {id = 2146, chance = 2222, maxCount = 2},
    {id = 2528, chance = 1333},
    {id = 5948, chance = 5000},
    {id = 5882, chance = 5000},
    {id = 5919, chance = 100000},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, min=-160, max=-600
-- name=fire, interval=3000, chance=20, range=7, min=-250, max=-350, radius=4, target=1, shootEffect=fire, areaEffect=firearea
-- name=firefield, interval=1000, chance=10, range=7, radius=6, target=1, shootEffect=fire
-- name=fire, interval=4000, chance=20, min=-250, max=-550, length=8, spread=3, areaEffect=firearea
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=1000, chance=25, min=400, max=700, areaEffect=blueshimmer
--]]

monster:register()
