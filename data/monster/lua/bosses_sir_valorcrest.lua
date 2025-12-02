-- Sir Valorcrest
-- Auto-converted from XML

local monster = Game.createMonsterType("Sir Valorcrest")
if not monster then return end

monster:name("Sir Valorcrest")
monster:nameDescription("a vampire lord")
monster:health(1600)
monster:maxHealth(1600)
monster:experience(1800)
monster:speed(270)
monster:race(RACE_UNDEAD)
monster:corpseId(8937)
monster:outfit({lookType = 287})
monster:defense(35)
monster:armor(38)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 20},
    {type = COMBAT_HOLYDAMAGE, percent = -15},
    {type = COMBAT_FIREDAMAGE, percent = -10},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_LIFEDRAIN, immunity = true},
    {condition = CONDITION_CURSED, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "I challenge you!", yell = false},
})

-- Summons
monster:summons({
    {name = "Vampire", chance = 30, interval = 2000, max = 1},
})

-- Loot
monster:loot({
    {id = 7427, chance = 250},
    {id = 9020, chance = 100000},
    {id = 7588, chance = 1500},
    {id = 2207, chance = 1400},
    {id = 2229, chance = 15000},
    {id = 9020, chance = 100000},
    {id = 2152, chance = 50000, maxCount = 5},
    {id = 2148, chance = 100000, maxCount = 93},
    {id = 2216, chance = 17111},
    {id = 2534, chance = 6300},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=70, attack=95
-- name=death, interval=1000, chance=12, max=-190, radius=4, target=1, areaEffect=mortarea, shootEffect=suddendeath
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=1000, chance=12, min=100, max=235, areaEffect=blueshimmer
-- name=invisible, interval=3000, chance=25, duration=6000, areaEffect=blueshimmer
--]]

monster:register()
