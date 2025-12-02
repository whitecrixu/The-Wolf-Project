-- Execowtioner
-- Auto-converted from XML

local monster = Game.createMonsterType("Execowtioner")
if not monster then return end

monster:name("Execowtioner")
monster:nameDescription("an execowtioner")
monster:health(3500)
monster:maxHealth(3500)
monster:experience(2400)
monster:speed(270)
monster:race(RACE_BLOOD)
monster:corpseId(23375)
monster:outfit({lookType = 609})
monster:defense(40)
monster:armor(40)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 1},
    {type = COMBAT_DEATHDAMAGE, percent = 15},
    {type = COMBAT_ENERGYDAMAGE, percent = 10},
    {type = COMBAT_ICEDAMAGE, percent = 10},
    {type = COMBAT_EARTHDAMAGE, percent = 20},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "I'm the one who puts the cute into execute!", yell = false},
    {text = "I'm here to punish!", yell = false},
    {text = "Justice is swift and unavoidable!", yell = false},
    {text = "I'll bring justice!", yell = false},
    {text = "There is excellence in execution!", yell = false},
    {text = "Your sentence is death!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 198},
    {id = 2152, chance = 67610, maxCount = 3},
    {id = 9971, chance = 390},
    {id = 5911, chance = 3230},
    {id = 5878, chance = 14710},
    {id = 12428, chance = 6580, maxCount = 2},
    {id = 23572, chance = 13160},
    {id = 7591, chance = 11480},
    {id = 7590, chance = 10060},
    {id = 2666, chance = 7230},
    {id = 9970, chance = 5810, maxCount = 2},
    {id = 2147, chance = 4520, maxCount = 2},
    {id = 7412, chance = 900},
    {id = 2487, chance = 770},
    {id = 23547, chance = 1420},
    {id = 2430, chance = 770},
    {id = 7413, chance = 390},
    {id = 7401, chance = 520},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=90, attack=80
-- name=lifedrain, interval=2000, chance=8, range=7, min=-135, max=-280, radius=5, target=1, shootEffect=whirlwindaxe, areaEffect=redspark
-- name=physical, interval=2000, chance=8, range=7, min=-90, max=-200, target=1, shootEffect=whirlwindaxe, areaEffect=explosionarea
--]]

monster:register()
