-- Undead Cavebear
-- Auto-converted from XML

local monster = Game.createMonsterType("Undead Cavebear")
if not monster then return end

monster:name("Undead Cavebear")
monster:nameDescription("an undead cavebear")
monster:health(450)
monster:maxHealth(450)
monster:experience(600)
monster:speed(250)
monster:race(RACE_UNDEAD)
monster:corpseId(13323)
monster:outfit({lookType = 384})
monster:defense(27)
monster:armor(23)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_HOLYDAMAGE, percent = -5},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_CURSED, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Grrrrrrrrrrrr", yell = false},
    {text = "Groooowl", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 28000, maxCount = 84},
    {id = 13302, chance = 10000},
    {id = 7618, chance = 2700},
    {id = 13303, chance = 1350},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-150
-- name=death, interval=2000, chance=20, range=7, min=-70, max=-130, shootEffect=suddendeath, areaEffect=smallclouds
-- name=death, interval=2000, chance=10, min=-50, max=-55, radius=3, areaEffect=mortarea
-- name=lifedrain, interval=2000, chance=10, min=-50, max=-55, radius=3, areaEffect=redshimmer
-- name=poisoncondition, interval=2000, chance=10, min=-70, max=-80, length=6, areaEffect=poison
--]]

monster:register()
