-- Dark Magician
-- Auto-converted from XML

local monster = Game.createMonsterType("Dark Magician")
if not monster then return end

monster:name("Dark Magician")
monster:nameDescription("a dark magician")
monster:health(325)
monster:maxHealth(325)
monster:experience(185)
monster:speed(210)
monster:race(RACE_BLOOD)
monster:corpseId(20367)
monster:outfit({lookType = 133, lookHead = 116, lookBody = 95, lookLegs = 50, lookFeet = 132, lookAddons = 2})
monster:defense(15)
monster:armor(15)
monster:targetDistance(4)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = 10},
    {type = COMBAT_EARTHDAMAGE, percent = 20},
    {type = COMBAT_ENERGYDAMAGE, percent = 20},
    {type = COMBAT_ICEDAMAGE, percent = 10},
    {type = COMBAT_HOLYDAMAGE, percent = 20},
    {type = COMBAT_DEATHDAMAGE, percent = -5},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Feel the power of my runes!", yell = false},
    {text = "Killing you is getting expensive!", yell = false},
    {text = "My secrets are mine alone!", yell = false},
    {text = "Stand Still!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 75100, maxCount = 55},
    {id = 7620, chance = 11900},
    {id = 7618, chance = 12000},
    {id = 7588, chance = 3000},
    {id = 2260, chance = 10000},
    {id = 7589, chance = 2860},
    {id = 7761, chance = 510},
    {id = 2188, chance = 280},
    {id = 13295, chance = 20},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=30, attack=20
-- name=fire, interval=2000, chance=20, range=7, min=-5, max=-40, shootEffect=fire
-- name=energy, interval=2000, chance=15, range=7, min=-20, max=-30, shootEffect=energy
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=20, min=60, max=80, areaEffect=greenshimmer
-- name=invisible, interval=2000, chance=10, duration=5000, areaEffect=blueshimmer
--]]

monster:register()
