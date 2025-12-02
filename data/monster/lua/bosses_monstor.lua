-- Monstor
-- Auto-converted from XML

local monster = Game.createMonsterType("Monstor")
if not monster then return end

monster:name("Monstor")
monster:nameDescription("a monstor")
monster:health(960)
monster:maxHealth(960)
monster:experience(575)
monster:speed(350)
monster:race(RACE_BLOOD)
monster:corpseId(10322)
monster:outfit({lookType = 244})
monster:defense(15)
monster:armor(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 20},
    {type = COMBAT_FIREDAMAGE, percent = 50},
    {type = COMBAT_ICEDAMAGE, percent = 10},
    {type = COMBAT_EARTHDAMAGE, percent = 30},
    {type = COMBAT_ENERGYDAMAGE, percent = -7},
    {type = COMBAT_HOLYDAMAGE, percent = -3},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_LIFEDRAIN, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "NO ARMY ME STOPPING! GRARR!", yell = false},
    {text = "ME DESTROY CITY! GROAR!", yell = false},
    {text = "WHARR! MUST ... KIDNAP WOMEN!", yell = false},
})

-- Summons
monster:summons({
    {name = "Acid Blob", chance = 40, interval = 4000, max = 3},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=1200, chance=100, max=-167
-- name=lifedrain, interval=2000, chance=30, min=-66, max=-85, length=6, areaEffect=greenshimmer
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=30, min=90, max=200, areaEffect=fire
--]]

monster:register()
