-- Insectoid Scout
-- Auto-converted from XML

local monster = Game.createMonsterType("Insectoid Scout")
if not monster then return end

monster:name("Insectoid Scout")
monster:nameDescription("an insectoid scout")
monster:health(230)
monster:maxHealth(230)
monster:experience(150)
monster:speed(190)
monster:race(RACE_VENOM)
monster:corpseId(13514)
monster:outfit({lookType = 403})
monster:defense(15)
monster:armor(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 5},
    {type = COMBAT_FIREDAMAGE, percent = -5},
    {type = COMBAT_EARTHDAMAGE, percent = 50},
    {type = COMBAT_ICEDAMAGE, percent = -5},
    {type = COMBAT_ENERGYDAMAGE, percent = -5},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Chrrr! Chrr!", yell = false},
    {text = "Klk! Klk!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 80000, maxCount = 80},
    {id = 3964, chance = 850},
    {id = 7618, chance = 280},
    {id = 2209, chance = 100},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=30, attack=37
--]]

monster:register()
