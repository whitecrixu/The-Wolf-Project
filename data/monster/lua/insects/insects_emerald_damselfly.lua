-- Emerald Damselfly
-- Auto-converted from XML

local monster = Game.createMonsterType("Emerald Damselfly")
if not monster then return end

monster:name("Emerald Damselfly")
monster:nameDescription("emerald damselfly")
monster:health(90)
monster:maxHealth(90)
monster:experience(35)
monster:speed(220)
monster:race(RACE_VENOM)
monster:corpseId(19706)
monster:outfit({lookType = 528})
monster:defense(10)
monster:armor(10)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Voices
monster:voices({
    {text = "Bzzzzz!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 90000, maxCount = 18},
    {id = 2544, chance = 7570, maxCount = 5},
    {id = 7618, chance = 1780},
    {id = 7620, chance = 2520},
    {id = 19737, chance = 10830},
    {id = 19742, chance = 8610},
    {id = 2120, chance = 4300},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=5, attack=5
-- name=earth, interval=2000, chance=15, range=7, max=-12, shootEffect=poison
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=10, min=4, max=10, areaEffect=blueshimmer
--]]

monster:register()
