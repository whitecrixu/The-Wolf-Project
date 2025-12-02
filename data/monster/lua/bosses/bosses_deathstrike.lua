-- Deathstrike
-- Auto-converted from XML

local monster = Game.createMonsterType("Deathstrike")
if not monster then return end

monster:name("Deathstrike")
monster:nameDescription("Deathstrike")
monster:health(200000)
monster:maxHealth(200000)
monster:experience(40000)
monster:speed(470)
monster:race(RACE_BLOOD)
monster:corpseId(18384)
monster:outfit({lookType = 500})
monster:defense(35)
monster:armor(25)
monster:targetDistance(0)
monster:runHealth(2000)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(50)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 40},
    {type = COMBAT_HOLYDAMAGE, percent = 20},
    {type = COMBAT_DEATHDAMAGE, percent = 50},
    {type = COMBAT_FIREDAMAGE, percent = 50},
    {type = COMBAT_ICEDAMAGE, percent = 40},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_DROWN, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Deeestructiooon!", yell = false},
    {text = "Maaahhhrrr!", yell = false},
    {text = "I am carnage incarnate!", yell = false},
    {text = "I've seen the light! And it was all engulfing fire!", yell = false},
    {text = "Taaake... this!", yell = false},
})

-- Loot
monster:loot({
    {id = 18465, chance = 11430},
    {id = 18452, chance = 8570},
    {id = 18450, chance = 10480},
    {id = 18430, chance = 100000},
    {id = 18453, chance = 12380},
    {id = 18451, chance = 11430},
    {id = 18454, chance = 11430},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=1300, chance=100, skill=80, attack=120
-- name=speed, interval=2000, chance=20, range=7, duration=2500, speedchange=-400, shootEffect=whirlwindaxe
-- name=fire, interval=2000, chance=100, range=7, min=-820, max=-950, areaEffect=firearea
-- name=energy, interval=1000, chance=12, range=3, min=-350, max=-800, target=1, areaEffect=purpleenergy
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=1000, chance=25, min=1000, max=5500, areaEffect=blueshimmer
--]]

monster:register()
