-- Shock Head
-- Auto-converted from XML

local monster = Game.createMonsterType("Shock Head")
if not monster then return end

monster:name("Shock Head")
monster:nameDescription("Shock Head")
monster:health(5800)
monster:maxHealth(5800)
monster:experience(4700)
monster:speed(250)
monster:race(RACE_BLOOD)
monster:corpseId(22392)
monster:outfit({lookType = 579})
monster:defense(30)
monster:armor(30)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(80)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = -5},
    {type = COMBAT_DEATHDAMAGE, percent = 30},
    {type = COMBAT_ENERGYDAMAGE, percent = 30},
    {type = COMBAT_ICEDAMAGE, percent = 5},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "<brrzz>", yell = false},
    {text = "Thun... Thun... THUNDER!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 43000, maxCount = 100},
    {id = 2148, chance = 50000, maxCount = 87},
    {id = 2146, chance = 5000},
    {id = 2498, chance = 270},
    {id = 22539, chance = 10000},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=100, attack=145
-- name=death, interval=2000, chance=15, min=-200, max=-300, length=5, spread=2, target=1, areaEffect=blacksmoke
-- name=speed, interval=2000, chance=15, length=8, spread=3, target=1, duration=7500, speedchange=-800, areaEffect=purpleenergy
-- name=physical, interval=2000, chance=20, max=-350, radius=4, target=1, shootEffect=earth, areaEffect=stones
-- name=shock head skill reducer 1, interval=2000, chance=5, range=5
-- name=shock head skill reducer 2, interval=2000, chance=5
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=15, min=250, max=350, areaEffect=insects
--]]

monster:register()
