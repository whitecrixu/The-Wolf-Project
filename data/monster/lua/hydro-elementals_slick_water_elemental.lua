-- Slick Water Elemental
-- Auto-converted from XML

local monster = Game.createMonsterType("Slick Water Elemental")
if not monster then return end

monster:name("Slick Water Elemental")
monster:nameDescription("a slick water elemental")
monster:health(550)
monster:maxHealth(550)
monster:experience(450)
monster:speed(280)
monster:race(RACE_UNDEAD)
monster:corpseId(8965)
monster:outfit({lookType = 286})
monster:defense(30)
monster:armor(30)
monster:runHealth(1)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:staticAttackChance(85)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 40},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FREEZING, immunity = true},
    {condition = CONDITION_DROWN, immunity = true},
})

-- Voices
monster:voices({
    {text = "Blubb", yell = false},
    {text = "Splipsh Splash", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 22500, maxCount = 70},
    {id = 2148, chance = 22500, maxCount = 60},
    {id = 7839, chance = 2575, maxCount = 3},
    {id = 8302, chance = 6000},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=40, attack=70
-- name=earth, interval=2000, chance=20, range=7, max=-130, target=1, shootEffect=earth
-- name=ice, interval=1000, chance=10, range=6, max=-220, target=1, shootEffect=snowball
-- name=ice, interval=2000, chance=18, range=4, max=-103, target=1, shootEffect=smallice
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=15, min=90, max=150, areaEffect=blueshimmer
--]]

monster:register()
