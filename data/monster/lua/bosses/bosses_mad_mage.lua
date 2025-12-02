-- mad mage
-- Auto-converted from XML

local monster = Game.createMonsterType("mad mage")
if not monster then return end

monster:name("mad mage")
monster:nameDescription("a mad mage")
monster:health(2200)
monster:maxHealth(2200)
monster:experience(1800)
monster:speed(240)
monster:race(RACE_BLOOD)
monster:corpseId(13603)
monster:outfit({lookType = 394})
monster:defense(20)
monster:armor(20)
monster:targetDistance(4)
monster:runHealth(1000)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = -20},
    {type = COMBAT_HOLYDAMAGE, percent = -10},
    {type = COMBAT_EARTHDAMAGE, percent = 50},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_ENERGY, immunity = true},
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Summons
monster:summons({
    {name = "stone golem", chance = 10, interval = 1000, max = 1},
})

-- Loot
monster:loot({
    {id = 7368, chance = 2400, maxCount = 4},
    {id = 5911, chance = 800},
    {id = 7589, chance = 1200, maxCount = 2},
    {id = 7588, chance = 1300, maxCount = 5},
    {id = 2148, chance = 100000, maxCount = 66},
    {id = 2792, chance = 5000, maxCount = 5},
    {id = 2148, chance = 100000, maxCount = 20},
    {id = 7895, chance = 800},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=32, attack=37
-- name=fire, interval=1000, chance=12, range=7, min=-50, max=-185, target=1, shootEffect=fire
-- name=manadrain, interval=1400, chance=24, range=6, min=-30, max=-90, shootEffect=ice
-- name=firefield, interval=1600, chance=20, range=7, radius=2, target=1, shootEffect=fire
-- name=energy, interval=1900, chance=18, min=-70, max=-150, length=8, areaEffect=bigclouds
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=1000, chance=25, min=35, max=80, areaEffect=blueshimmer
--]]

monster:register()
