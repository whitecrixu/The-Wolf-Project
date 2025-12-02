-- Ungreez
-- Auto-converted from XML

local monster = Game.createMonsterType("Ungreez")
if not monster then return end

monster:name("Ungreez")
monster:nameDescription("ungreez")
monster:health(8200)
monster:maxHealth(8200)
monster:experience(5000)
monster:speed(330)
monster:race(RACE_BLOOD)
monster:manaCost(10000)
monster:corpseId(5995)
monster:outfit({lookType = 35})
monster:defense(55)
monster:armor(55)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 25},
    {type = COMBAT_ICEDAMAGE, percent = -15},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_ENERGY, immunity = true},
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_LIFEDRAIN, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "I'll teach you that even heros can die", yell = true},
    {text = "You wil die Begging like the others did", yell = true},
})

-- Loot
monster:loot({
    {id = 2148, chance = 21000, maxCount = 90},
    {id = 2795, chance = 10000, maxCount = 6},
    {id = 7590, chance = 20000},
    {id = 7591, chance = 20000},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=70, attack=120
-- name=manadrain, interval=2000, chance=13, range=7, max=-110, shootEffect=suddendeath
-- name=fire, interval=1000, chance=14, range=7, min=-150, max=-250, radius=7, target=1, shootEffect=fire, areaEffect=firearea
-- name=energy, interval=2000, chance=18, min=-200, max=-400, shootEffect=energy, areaEffect=purpleenergy
-- name=energy, interval=1000, chance=12, min=-300, max=-380, length=8, areaEffect=purpleenergy
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=15, min=90, max=150, areaEffect=blueshimmer
--]]

monster:register()
