-- Rocky
-- Auto-converted from XML

local monster = Game.createMonsterType("Rocky")
if not monster then return end

monster:name("Rocky")
monster:nameDescription("rocky")
monster:health(250)
monster:maxHealth(250)
monster:experience(190)
monster:speed(170)
monster:race(RACE_UNDEAD)
monster:corpseId(7349)
monster:outfit({lookType = 95})
monster:defense(30)
monster:armor(30)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = 10},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_ENERGY, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Another little gladiator!", yell = false},
    {text = "Come into my embrace.", yell = false},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=30, attack=40
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=50, min=15, max=35, areaEffect=blueshimmer
--]]

monster:register()
