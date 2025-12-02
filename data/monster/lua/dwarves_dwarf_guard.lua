-- Dwarf Guard
-- Auto-converted from XML

local monster = Game.createMonsterType("Dwarf Guard")
if not monster then return end

monster:name("Dwarf Guard")
monster:nameDescription("a dwarf guard")
monster:health(245)
monster:maxHealth(245)
monster:experience(165)
monster:speed(205)
monster:race(RACE_BLOOD)
monster:manaCost(650)
monster:corpseId(6013)
monster:outfit({lookType = 70})
monster:defense(30)
monster:armor(30)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isSummonable(true)
monster:isConvinceable(true)
monster:isIllusionable(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_EARTHDAMAGE, percent = 20},
    {type = COMBAT_PHYSICALDAMAGE, percent = 10},
    {type = COMBAT_FIREDAMAGE, percent = -5},
    {type = COMBAT_DEATHDAMAGE, percent = -5},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Hail Durin!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 40000, maxCount = 30},
    {id = 7618, chance = 380},
    {id = 5880, chance = 510},
    {id = 2643, chance = 40000},
    {id = 2150, chance = 140},
    {id = 2457, chance = 1600},
    {id = 2513, chance = 6000},
    {id = 2417, chance = 4000},
    {id = 2787, chance = 55000, maxCount = 2},
    {id = 2483, chance = 9200},
    {id = 2387, chance = 600},
    {id = 2459, chance = 250},
    {id = 2208, chance = 190},
    {id = 13757, chance = 280},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=30, attack=70
--]]

monster:register()
