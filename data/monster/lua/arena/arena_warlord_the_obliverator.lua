-- The Obliverator
-- Auto-converted from XML

local monster = Game.createMonsterType("The Obliverator")
if not monster then return end

monster:name("The Obliverator")
monster:nameDescription("the obliverator")
monster:health(9500)
monster:maxHealth(9500)
monster:experience(6000)
monster:speed(280)
monster:race(RACE_FIRE)
monster:corpseId(7349)
monster:outfit({lookType = 35})
monster:defense(45)
monster:armor(40)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 50},
    {type = COMBAT_DEATHDAMAGE, percent = 35},
    {type = COMBAT_HOLYDAMAGE, percent = -15},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "NO ONE WILL BEAT ME!", yell = false},
})

-- Summons
monster:summons({
    {name = "fire elemental", chance = 50, interval = 2000, max = 1},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=90, attack=140
-- name=fire, interval=1000, chance=20, range=5, min=-100, max=-250, radius=7, target=1, areaEffect=firearea, shootEffect=fire
-- name=energy, interval=3000, chance=30, min=-200, max=-500, length=8, areaEffect=energy
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=4000, chance=5, min=50, max=200, areaEffect=blueshimmer
--]]

monster:register()
