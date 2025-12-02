-- Lancer Beetle
-- Auto-converted from XML

local monster = Game.createMonsterType("Lancer Beetle")
if not monster then return end

monster:name("Lancer Beetle")
monster:nameDescription("a lancer beetle")
monster:health(400)
monster:maxHealth(400)
monster:experience(275)
monster:speed(200)
monster:race(RACE_VENOM)
monster:corpseId(11375)
monster:outfit({lookType = 348})
monster:defense(20)
monster:armor(20)
monster:runHealth(30)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:pushable(false)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_DEATHDAMAGE, percent = 50},
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
    {id = 2148, chance = 60000, maxCount = 61},
    {id = 2148, chance = 60000, maxCount = 79},
    {id = 11372, chance = 16666},
    {id = 10557, chance = 8333},
    {id = 10609, chance = 4166},
    {id = 11374, chance = 1123},
    {id = 2150, chance = 247},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=40, attack=46
-- name=poisonfield, interval=2000, chance=10, radius=4, areaEffect=poison
-- name=lifedrain, interval=2000, chance=15, max=-90, length=7, areaEffect=greenspark
-- name=poisoncondition, interval=2000, chance=10, range=7, min=-40, max=-80, shootEffect=poison
-- name=lancer beetle curse, interval=2000, chance=5, range=5
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=invisible, interval=2000, chance=10, duration=3000, areaEffect=groundshaker
--]]

monster:register()
