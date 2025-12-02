-- Frost Dragon Hatchling
-- Auto-converted from XML

local monster = Game.createMonsterType("Frost Dragon Hatchling")
if not monster then return end

monster:name("Frost Dragon Hatchling")
monster:nameDescription("a frost dragon hatchling")
monster:health(800)
monster:maxHealth(800)
monster:experience(745)
monster:speed(200)
monster:race(RACE_UNDEAD)
monster:corpseId(7969)
monster:outfit({lookType = 283})
monster:defense(15)
monster:armor(15)
monster:runHealth(80)

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
    {type = COMBAT_ENERGYDAMAGE, percent = -5},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_LIFEDRAIN, immunity = true},
    {condition = CONDITION_FREEZING, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Rooawwrr", yell = false},
    {text = "Fchu?", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 86750, maxCount = 55},
    {id = 2672, chance = 79600},
    {id = 8900, chance = 400},
    {id = 7618, chance = 560},
    {id = 10578, chance = 5000},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=70, attack=40
-- name=ice, interval=2000, chance=10, min=-60, max=-110, length=5, spread=2, areaEffect=iceattack
-- name=ice, interval=2000, chance=15, min=-60, max=-110, radius=4, target=1, areaEffect=icearea
-- name=speed, interval=2000, chance=15, radius=4, target=1, duration=12000, speedchange=-600, shootEffect=ice, areaEffect=icearea
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=15, min=45, max=50, areaEffect=blueshimmer
--]]

monster:register()
