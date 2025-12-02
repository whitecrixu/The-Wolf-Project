-- Gnomevil
-- Auto-converted from XML

local monster = Game.createMonsterType("Gnomevil")
if not monster then return end

monster:name("Gnomevil")
monster:nameDescription("Gnomevil")
monster:health(250000)
monster:maxHealth(250000)
monster:experience(45000)
monster:speed(470)
monster:race(RACE_BLOOD)
monster:corpseId(18443)
monster:outfit({lookType = 504})
monster:defense(35)
monster:armor(25)
monster:targetDistance(0)
monster:runHealth(10000)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(50)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = 10},
    {type = COMBAT_DEATHDAMAGE, percent = -20},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_DROWN, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "No more Mr. Nicegnome!", yell = false},
    {text = "Taste the power of the dark side!", yell = false},
    {text = "I've seen the light! And it was all engulfing fire!", yell = false},
    {text = "Tatatata!!!", yell = false},
    {text = "Muhahaha!", yell = false},
    {text = "I'm feeling grrrreat!", yell = false},
})

-- Loot
monster:loot({
    {id = 18451, chance = 9830},
    {id = 18453, chance = 8120},
    {id = 18495, chance = 99150},
    {id = 18465, chance = 7690},
    {id = 18454, chance = 9400},
    {id = 18452, chance = 8120},
    {id = 18450, chance = 14100},
    {id = 18449, chance = 1710},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=1300, chance=100, skill=80, attack=140
-- name=speed, interval=2000, chance=20, range=7, duration=2500, speedchange=-400, shootEffect=whirlwindaxe
-- name=fire, interval=2000, chance=100, range=7, min=-820, max=-950, areaEffect=energyarea
-- name=manadrain, interval=2000, chance=9, min=-230, max=-500, length=8, areaEffect=blueshimmer
-- name=energy, interval=1000, chance=12, range=3, min=-350, max=-800, target=1, areaEffect=purpleenergy
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=1000, chance=25, min=1000, max=4000, areaEffect=blueshimmer
--]]

monster:register()
