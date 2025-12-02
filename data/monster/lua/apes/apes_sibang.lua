-- Sibang
-- Auto-converted from XML

local monster = Game.createMonsterType("Sibang")
if not monster then return end

monster:name("Sibang")
monster:nameDescription("a sibang")
monster:health(225)
monster:maxHealth(225)
monster:experience(105)
monster:speed(200)
monster:race(RACE_BLOOD)
monster:corpseId(6045)
monster:outfit({lookType = 118})
monster:defense(15)
monster:armor(15)
monster:targetDistance(4)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:pushable(false)
monster:canPushItems(true)
monster:staticAttackChance(70)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = 25},
    {type = COMBAT_HOLYDAMAGE, percent = 10},
    {type = COMBAT_ICEDAMAGE, percent = -15},
    {type = COMBAT_DEATHDAMAGE, percent = -5},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Eeeeek! Eeeeek", yell = false},
    {text = "Huh! Huh! Huh!", yell = false},
    {text = "Ahhuuaaa!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 56000, maxCount = 35},
    {id = 2676, chance = 30000, maxCount = 12},
    {id = 2678, chance = 1960, maxCount = 3},
    {id = 2675, chance = 19840, maxCount = 5},
    {id = 1294, chance = 30060, maxCount = 3},
    {id = 2682, chance = 1000},
    {id = 12467, chance = 5000},
    {id = 5883, chance = 1000},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-40
-- name=physical, interval=2000, chance=35, range=7, max=-55, shootEffect=smallstone
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=speed, interval=2000, chance=15, duration=5000, speedchange=380, areaEffect=redshimmer
--]]

monster:register()
