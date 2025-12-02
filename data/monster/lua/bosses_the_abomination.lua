-- The Abomination
-- Auto-converted from XML

local monster = Game.createMonsterType("The Abomination")
if not monster then return end

monster:name("The Abomination")
monster:nameDescription("the abomination")
monster:health(38050)
monster:maxHealth(38050)
monster:experience(25000)
monster:speed(340)
monster:race(RACE_VENOM)
monster:corpseId(6532)
monster:outfit({lookType = 238})
monster:defense(25)
monster:armor(25)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Immunities
monster:immunities({
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Blubb", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 100},
    {id = 2152, chance = 10000, maxCount = 3},
    {id = 6500, chance = 2857},
    {id = 5944, chance = 2500},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=90, attack=120
-- name=speed, interval=1000, chance=12, radius=6, duration=10000, speedchange=-800, areaEffect=poison
-- name=earth, interval=1000, chance=9, min=-200, max=-650, radius=4, areaEffect=poison
-- name=lifedrain, interval=1000, chance=11, min=-400, max=-900, radius=4, target=1, areaEffect=greennote, shootEffect=poison
-- name=physical, interval=2000, chance=19, min=-350, max=-850, length=7, shootEffect=poison
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=1000, chance=75, min=505, max=605, areaEffect=blueshimmer
--]]

monster:register()
