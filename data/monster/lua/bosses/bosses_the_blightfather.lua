-- The Blightfather
-- Auto-converted from XML

local monster = Game.createMonsterType("The Blightfather")
if not monster then return end

monster:name("The Blightfather")
monster:nameDescription("the blightfather")
monster:health(400)
monster:maxHealth(400)
monster:experience(600)
monster:speed(290)
monster:race(RACE_VENOM)
monster:corpseId(11375)
monster:outfit({lookType = 348})
monster:defense(25)
monster:armor(25)
monster:runHealth(80)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_DEATHDAMAGE, percent = 50},
    {type = COMBAT_ICEDAMAGE, percent = -5},
    {type = COMBAT_FIREDAMAGE, percent = -10},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_LIFEDRAIN, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Crump!", yell = true},
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 61},
    {id = 2148, chance = 100000, maxCount = 60},
    {id = 10609, chance = 17500},
    {id = 10557, chance = 12500},
    {id = 11372, chance = 7000},
    {id = 11374, chance = 400},
    {id = 2150, chance = 800},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=40, attack=80
-- name=poison, interval=2000, chance=20, max=-0, length=8, spread=3, areaEffect=poison
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=invisible, interval=1000, chance=10, duration=3000, areaEffect=redshimmer
--]]

monster:register()
