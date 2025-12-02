-- Yaga The Crone
-- Auto-converted from XML

local monster = Game.createMonsterType("Yaga The Crone")
if not monster then return end

monster:name("Yaga The Crone")
monster:nameDescription("an yaga the crone")
monster:health(620)
monster:maxHealth(620)
monster:experience(375)
monster:speed(240)
monster:race(RACE_BLOOD)
monster:corpseId(6081)
monster:outfit({lookType = 54})
monster:defense(20)
monster:armor(15)
monster:targetDistance(4)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_DEATHDAMAGE, percent = -5},
    {type = COMBAT_EARTHDAMAGE, percent = 1},
    {type = COMBAT_PHYSICALDAMAGE, percent = -1},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_ENERGY, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Where did I park my hut?", yell = false},
    {text = "You will taste so sweet!", yell = false},
    {text = "Hexipooh, bewitched are you!", yell = false},
})

-- Loot
monster:loot({
    {id = 2687, chance = 30000, maxCount = 8},
    {id = 2185, chance = 2500},
    {id = 2651, chance = 25000},
    {id = 2324, chance = 15000},
    {id = 2654, chance = 15000},
    {id = 2129, chance = 10000},
    {id = 8902, chance = 2000},
    {id = 2800, chance = 20000},
    {id = 2199, chance = 8000},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-90
-- name=fire, interval=2500, chance=50, range=7, min=-30, max=-50, shootEffect=fire, areaEffect=fire
-- name=poisoncondition, interval=3000, chance=13, range=7, min=-200, max=-300, shootEffect=poison
-- name=firefield, interval=2000, chance=13, range=7, shootEffect=fire
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=invisible, interval=1000, chance=9, duration=3000, areaEffect=redshimmer
-- name=outfit, interval=4000, chance=9, duration=4000, areaEffect=redshimmer
--]]

monster:register()
