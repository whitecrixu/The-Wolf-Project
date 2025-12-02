-- Tomb Servant
-- Auto-converted from XML

local monster = Game.createMonsterType("Tomb Servant")
if not monster then return end

monster:name("Tomb Servant")
monster:nameDescription("a tomb servant")
monster:health(475)
monster:maxHealth(475)
monster:experience(215)
monster:speed(190)
monster:race(RACE_UNDEAD)
monster:corpseId(6029)
monster:outfit({lookType = 100})
monster:defense(30)
monster:armor(30)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Immunities
monster:immunities({
    {condition = CONDITION_CURSED, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Chaarr!!", yell = false},
    {text = "Ngl..Nglll...Gll", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 82350, maxCount = 108},
    {id = 2230, chance = 49000},
    {id = 3976, chance = 25325, maxCount = 12},
    {id = 2159, chance = 8210},
    {id = 2397, chance = 6560},
    {id = 2541, chance = 5300},
    {id = 2227, chance = 2000},
    {id = 11200, chance = 1000},
    {id = 13535, chance = 230},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-130
-- name=lifedrain, interval=2000, chance=20, range=7, min=-40, max=-55, target=1, areaEffect=redshimmer
--]]

monster:register()
