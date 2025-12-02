-- Bane Bringer
-- Auto-converted from XML

local monster = Game.createMonsterType("Bane Bringer")
if not monster then return end

monster:name("Bane Bringer")
monster:nameDescription("a bane bringer")
monster:health(2500)
monster:maxHealth(2500)
monster:experience(400)
monster:speed(260)
monster:race(RACE_UNDEAD)
monster:corpseId(9867)
monster:outfit({lookType = 310})
monster:defense(55)
monster:armor(50)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_HOLYDAMAGE, percent = -50},
    {type = COMBAT_DEATHDAMAGE, percent = -90},
    {type = COMBAT_FIREDAMAGE, percent = -80},
    {type = COMBAT_ENERGYDAMAGE, percent = -80},
    {type = COMBAT_ICEDAMAGE, percent = -80},
    {type = COMBAT_EARTHDAMAGE, percent = -80},
    {type = COMBAT_PHYSICALDAMAGE, percent = 10},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "You shall not succeed!", yell = false},
    {text = "This time we will prevail!", yell = false},
})

-- Loot
monster:loot({
    {id = 12969, chance = 100000},
    {id = 2250, chance = 14285, maxCount = 96},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, range=1, skill=40, attack=60
--]]

monster:register()
