-- Morik The Gladiator
-- Auto-converted from XML

local monster = Game.createMonsterType("Morik The Gladiator")
if not monster then return end

monster:name("Morik The Gladiator")
monster:nameDescription("Morik The Gladiator")
monster:health(1235)
monster:maxHealth(1235)
monster:experience(160)
monster:speed(200)
monster:race(RACE_BLOOD)
monster:corpseId(20454)
monster:outfit({lookType = 131, lookHead = 57, lookBody = 57, lookLegs = 95, lookFeet = 95, lookAddons = 1})
monster:defense(22)
monster:armor(20)
monster:runHealth(10)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_HOLYDAMAGE, percent = 10},
    {type = COMBAT_FIREDAMAGE, percent = 10},
    {type = COMBAT_ENERGYDAMAGE, percent = 10},
    {type = COMBAT_ICEDAMAGE, percent = 10},
    {type = COMBAT_EARTHDAMAGE, percent = 10},
    {type = COMBAT_DEATHDAMAGE, percent = -1},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "To be the one you'll have to beat the one!", yell = false},
    {text = "Where did I put my ultimate health potion again?", yell = false},
    {text = "I am the best!", yell = false},
    {text = "I'll take your ears as a trophy!", yell = false},
})

-- Summons
monster:summons({
    {name = "Gladiator", chance = 10, interval = 2000, max = 1},
})

-- Loot
monster:loot({
    {id = 9735, chance = 100000},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-200
-- name=physical, interval=2000, chance=15, max=-110, radius=3, areaEffect=blackspark
-- name=drunk, interval=3000, chance=34, range=7, duration=5000, shootEffect=whirlwindsword
--]]

monster:register()
