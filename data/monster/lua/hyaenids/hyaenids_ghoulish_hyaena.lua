-- Ghoulish Hyaena
-- Auto-converted from XML

local monster = Game.createMonsterType("Ghoulish Hyaena")
if not monster then return end

monster:name("Ghoulish Hyaena")
monster:nameDescription("a ghoulish hyaena")
monster:health(400)
monster:maxHealth(400)
monster:experience(195)
monster:speed(200)
monster:race(RACE_BLOOD)
monster:manaCost(275)
monster:corpseId(6026)
monster:outfit({lookType = 94, lookHead = 20, lookBody = 30, lookLegs = 40, lookFeet = 50})
monster:defense(20)
monster:armor(20)
monster:runHealth(30)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isSummonable(true)
monster:isConvinceable(true)
monster:isIllusionable(true)
monster:pushable(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_EARTHDAMAGE, percent = 70},
    {type = COMBAT_HOLYDAMAGE, percent = -10},
    {type = COMBAT_FIREDAMAGE, percent = -10},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_CURSED, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Grawrrr!!", yell = false},
    {text = "Hoouu!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 89000, maxCount = 40},
    {id = 2147, chance = 2700, maxCount = 2},
    {id = 3976, chance = 65000, maxCount = 7},
    {id = 2666, chance = 51060, maxCount = 3},
    {id = 7618, chance = 19840},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=30, attack=56
-- name=poisoncondition, interval=2000, chance=15, min=-60, length=3, spread=2, areaEffect=poison
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=speed, interval=2000, chance=15, duration=2000, speedchange=3000
--]]

monster:register()
