-- Diblis the fair
-- Auto-converted from XML

local monster = Game.createMonsterType("Diblis the fair")
if not monster then return end

monster:name("Diblis the fair")
monster:nameDescription("a vampire lord")
monster:health(1600)
monster:maxHealth(1600)
monster:experience(1800)
monster:speed(280)
monster:race(RACE_UNDEAD)
monster:corpseId(8937)
monster:outfit({lookType = 287})
monster:defense(30)
monster:armor(30)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = -10},
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
    {text = "I envy you to be slain by someone as beautiful as me.", yell = false},
    {text = "I will drain your ugly corpses of the last drop of blood.", yell = false},
})

-- Summons
monster:summons({
    {name = "Banshee", chance = 50, interval = 4500, max = 1},
})

-- Loot
monster:loot({
    {id = 2229, chance = 15000},
    {id = 7588, chance = 1500},
    {id = 2144, chance = 8900, maxCount = 2},
    {id = 2152, chance = 50000, maxCount = 5},
    {id = 2148, chance = 100000, maxCount = 99},
    {id = 2216, chance = 14111},
    {id = 13224, chance = 500},
    {id = 9020, chance = 100000},
    {id = 2534, chance = 2100},
    {id = 8903, chance = 300},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=70, attack=95
-- name=death, interval=1000, chance=12, max=-155, target=1, areaEffect=mortarea, shootEffect=suddendeath
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=1000, chance=12, min=100, max=235, areaEffect=blueshimmer
-- name=invisible, interval=3000, chance=25, duration=6000, areaEffect=blueshimmer
--]]

monster:register()
