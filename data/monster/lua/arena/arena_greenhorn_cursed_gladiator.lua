-- Cursed Gladiator
-- Auto-converted from XML

local monster = Game.createMonsterType("Cursed Gladiator")
if not monster then return end

monster:name("Cursed Gladiator")
monster:nameDescription("cursed gladiator")
monster:health(435)
monster:maxHealth(435)
monster:experience(215)
monster:speed(170)
monster:race(RACE_UNDEAD)
monster:corpseId(7349)
monster:outfit({lookType = 100})
monster:defense(26)
monster:armor(25)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)

-- Resistances
monster:elements({
    {type = COMBAT_EARTHDAMAGE, percent = 20},
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
    {text = "Death where are you?", yell = false},
    {text = "Slay me, end my curse.", yell = false},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=40, attack=60
-- name=lifedrain, interval=4000, chance=50, range=5, max=50, radius=1, target=1, areaEffect=redshimmer
--]]

monster:register()
