-- Haunted Treeling
-- Auto-converted from XML

local monster = Game.createMonsterType("Haunted Treeling")
if not monster then return end

monster:name("Haunted Treeling")
monster:nameDescription("a haunted treeling")
monster:health(450)
monster:maxHealth(450)
monster:experience(310)
monster:speed(220)
monster:race(RACE_UNDEAD)
monster:corpseId(9867)
monster:outfit({lookType = 310})
monster:defense(20)
monster:armor(20)
monster:targetDistance(0)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(85)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = -5},
    {type = COMBAT_DEATHDAMAGE, percent = 1},
    {type = COMBAT_ICEDAMAGE, percent = 15},
    {type = COMBAT_HOLYDAMAGE, percent = 20},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Knarrrz", yell = false},
    {text = "Huuhuuhuuuhuuaarrr", yell = false},
    {text = "Knorrrrrr", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 60000, maxCount = 95},
    {id = 4860, chance = 25000},
    {id = 2788, chance = 7142},
    {id = 2787, chance = 5263, maxCount = 2},
    {id = 10600, chance = 5000},
    {id = 7618, chance = 5000},
    {id = 2790, chance = 1851},
    {id = 7588, chance = 900},
    {id = 2213, chance = 621},
    {id = 2146, chance = 585},
    {id = 7443, chance = 80},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=40, attack=60
-- name=manadrain, interval=2000, chance=5, min=-30, max=-100, radius=4, areaEffect=greenbubble
-- name=speed, interval=2000, chance=15, length=5, duration=15000, speedchange=-700, areaEffect=smallplants
-- name=physical, interval=2000, chance=15, range=7, max=-100, radius=1, target=1, shootEffect=smallearth, areaEffect=carniphila
-- name=earth, interval=2000, chance=10, min=-55, max=-100, radius=4, target=1, areaEffect=greenspark
-- name=earth, interval=2000, chance=10, radius=1, areaEffect=poison
--]]

monster:register()
