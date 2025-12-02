-- Wailing Widow
-- Auto-converted from XML

local monster = Game.createMonsterType("Wailing Widow")
if not monster then return end

monster:name("Wailing Widow")
monster:nameDescription("a wailing widow")
monster:health(850)
monster:maxHealth(850)
monster:experience(450)
monster:speed(220)
monster:race(RACE_VENOM)
monster:corpseId(11310)
monster:outfit({lookType = 347})
monster:defense(20)
monster:armor(20)

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
    {type = COMBAT_FIREDAMAGE, percent = -5},
    {type = COMBAT_HOLYDAMAGE, percent = 5},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_CURSED, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_LIFEDRAIN, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 100},
    {id = 2148, chance = 50000, maxCount = 37},
    {id = 11328, chance = 20950},
    {id = 7618, chance = 4761},
    {id = 2510, chance = 2854},
    {id = 7620, chance = 4785},
    {id = 2796, chance = 3208},
    {id = 11329, chance = 900},
    {id = 11323, chance = 2210},
    {id = 2381, chance = 4460},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=50, attack=40
-- name=drunk, interval=2000, chance=20, range=7, radius=4, duration=4000, areaEffect=rednote
-- name=lifedrain, interval=2000, chance=10, min=-40, max=-70, radius=3, areaEffect=redshimmer
-- name=earth, interval=2000, chance=15, range=7, min=-60, max=-110, shootEffect=poison
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=5, min=70, max=100, areaEffect=whitenote
-- name=speed, interval=2000, chance=15, duration=5000, speedchange=820, areaEffect=yellownote
--]]

monster:register()
