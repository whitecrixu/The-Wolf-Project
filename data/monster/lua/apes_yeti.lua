-- Yeti
-- Auto-converted from XML

local monster = Game.createMonsterType("Yeti")
if not monster then return end

monster:name("Yeti")
monster:nameDescription("a yeti")
monster:health(950)
monster:maxHealth(950)
monster:experience(460)
monster:speed(270)
monster:race(RACE_BLOOD)
monster:corpseId(6038)
monster:outfit({lookType = 110})
monster:defense(33)
monster:armor(28)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ICEDAMAGE, percent = -1},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Yooodelaaahooohooo!", yell = false},
    {text = "Yooodelaaaheeeheee!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 60},
    {id = 2148, chance = 100000, maxCount = 40},
    {id = 2666, chance = 33333, maxCount = 4},
    {id = 2671, chance = 10000, maxCount = 5},
    {id = 2111, chance = 10000, maxCount = 22},
    {id = 2644, chance = 1333},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-200
-- name=physical, interval=1000, chance=15, range=7, max=-180, shootEffect=snowball, areaEffect=poff
-- name=energy, interval=1000, chance=12, max=-175, length=3, spread=3, areaEffect=poff
--]]

monster:register()
