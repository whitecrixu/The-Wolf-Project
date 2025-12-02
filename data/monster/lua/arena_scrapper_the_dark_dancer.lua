-- The Dark Dancer
-- Auto-converted from XML

local monster = Game.createMonsterType("The Dark Dancer")
if not monster then return end

monster:name("The Dark Dancer")
monster:nameDescription("the dark dancer")
monster:health(855)
monster:maxHealth(855)
monster:experience(435)
monster:speed(170)
monster:race(RACE_BLOOD)
monster:corpseId(7349)
monster:outfit({lookType = 58})
monster:defense(12)
monster:armor(11)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = 40},
    {type = COMBAT_DEATHDAMAGE, percent = 20},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "I hope you like my voice!", yell = false},
})

-- Summons
monster:summons({
    {name = "Ghoul", chance = 20, interval = 2000, max = 1},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=poisoncondition, interval=2000, chance=100, skill=20, attack=30
-- name=physical, interval=3000, chance=70, range=5, min=-60, max=-95, radius=1, target=1, areaEffect=mortarea, shootEffect=suddendeath
-- name=physical, interval=6000, chance=90, range=5, min=-60, max=-95, radius=1, target=1, areaEffect=mortarea, shootEffect=suddendeath
-- name=speed, interval=3500, chance=35, range=5, radius=1, target=1, duration=10000, areaEffect=redshimmer
-- name=manadrain, interval=4000, chance=30, range=5, min=-2, max=-110, radius=1, target=1, areaEffect=redshimmer
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=45, min=75, max=135, areaEffect=blueshimmer
-- name=invisible, interval=3000, chance=50, duration=5000, areaEffect=blueshimmer
--]]

monster:register()
