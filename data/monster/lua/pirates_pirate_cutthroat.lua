-- Pirate Cutthroat
-- Auto-converted from XML

local monster = Game.createMonsterType("Pirate Cutthroat")
if not monster then return end

monster:name("Pirate Cutthroat")
monster:nameDescription("a pirate cutthroat")
monster:health(325)
monster:maxHealth(325)
monster:experience(175)
monster:speed(210)
monster:race(RACE_BLOOD)
monster:manaCost(495)
monster:corpseId(20479)
monster:outfit({lookType = 96})
monster:defense(25)
monster:armor(25)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isConvinceable(true)
monster:pushable(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_EARTHDAMAGE, percent = 10},
    {type = COMBAT_HOLYDAMAGE, percent = 20},
    {type = COMBAT_DEATHDAMAGE, percent = -5},
    {type = COMBAT_FIREDAMAGE, percent = -10},
    {type = COMBAT_ICEDAMAGE, percent = -5},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Give up!", yell = false},
    {text = "Hiyaa!", yell = false},
    {text = "Plundeeeeer!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 78000, maxCount = 50},
    {id = 2483, chance = 3000},
    {id = 2509, chance = 2800},
    {id = 6126, chance = 500},
    {id = 6097, chance = 550},
    {id = 6098, chance = 450},
    {id = 5792, chance = 110},
    {id = 5918, chance = 980},
    {id = 5553, chance = 90},
    {id = 5710, chance = 2000},
    {id = 5091, chance = 1000},
    {id = 5927, chance = 1000},
    {id = 11219, chance = 10120},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=75, attack=40
-- name=physical, interval=2000, chance=20, range=7, max=-95, radius=1, target=1, shootEffect=explosion, areaEffect=explosionarea
--]]

monster:register()
