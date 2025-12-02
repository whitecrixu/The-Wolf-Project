-- Pirate Ghost
-- Auto-converted from XML

local monster = Game.createMonsterType("Pirate Ghost")
if not monster then return end

monster:name("Pirate Ghost")
monster:nameDescription("a pirate ghost")
monster:health(275)
monster:maxHealth(275)
monster:experience(250)
monster:speed(170)
monster:race(RACE_UNDEAD)
monster:corpseId(5566)
monster:outfit({lookType = 196})
monster:defense(0)
monster:armor(0)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_HOLYDAMAGE, percent = -25},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_LIFEDRAIN, immunity = true},
    {condition = CONDITION_BLEEDING, immunity = true},
    {condition = CONDITION_CURSED, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
})

-- Voices
monster:voices({
    {text = "Yooh Ho Hooh Ho!", yell = false},
    {text = "Hell is waiting for You!", yell = false},
    {text = "It's alive!", yell = false},
    {text = "The curse! Aww the curse!", yell = false},
    {text = "You will not get my treasure!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 48000, maxCount = 67},
    {id = 10601, chance = 4300},
    {id = 2165, chance = 650},
    {id = 1951, chance = 910},
    {id = 2383, chance = 130},
    {id = 2655, chance = 130},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=30, attack=50
-- name=lifedrain, interval=2000, chance=15, min=-40, max=-80, radius=1, areaEffect=redshimmer
-- name=death, interval=2000, chance=10, range=7, min=-50, max=-65, radius=3, target=1, areaEffect=rednote
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=5, min=40, max=70, areaEffect=blueshimmer
--]]

monster:register()
