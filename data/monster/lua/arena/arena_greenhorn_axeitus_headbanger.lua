-- Axeitus Headbanger
-- Auto-converted from XML

local monster = Game.createMonsterType("Axeitus Headbanger")
if not monster then return end

monster:name("Axeitus Headbanger")
monster:nameDescription("axeitus headbanger")
monster:health(365)
monster:maxHealth(365)
monster:experience(140)
monster:speed(170)
monster:race(RACE_BLOOD)
monster:corpseId(7349)
monster:outfit({lookType = 71})
monster:defense(17)
monster:armor(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = -5},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Hicks!", yell = false},
    {text = "Stand still! Both of you! hicks", yell = false},
    {text = "This victory will earn me a casket of beer.", yell = false},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=30, attack=40
-- name=physical, interval=1000, chance=80, range=5, max=-50, radius=1, target=1, shootEffect=smallstone
--]]

monster:register()
