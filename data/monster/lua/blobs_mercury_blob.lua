-- Mercury Blob
-- Auto-converted from XML

local monster = Game.createMonsterType("Mercury Blob")
if not monster then return end

monster:name("Mercury Blob")
monster:nameDescription("a mercury blob")
monster:health(150)
monster:maxHealth(150)
monster:experience(180)
monster:speed(180)
monster:race(RACE_UNDEAD)
monster:corpseId(9961)
monster:outfit({lookType = 316})
monster:defense(15)
monster:armor(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:staticAttackChance(85)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = 10},
    {type = COMBAT_EARTHDAMAGE, percent = 65},
    {type = COMBAT_ICEDAMAGE, percent = 15},
    {type = COMBAT_PHYSICALDAMAGE, percent = 5},
    {type = COMBAT_HOLYDAMAGE, percent = 65},
    {type = COMBAT_LIFEDRAIN, percent = 80},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_CURSED, immunity = true},
})

-- Voices
monster:voices({
    {text = "Crackle", yell = false},
})

-- Summons
monster:summons({
    {name = "Mercury Blob", chance = 10, interval = 2000, max = 1},
})

-- Loot
monster:loot({
    {id = 9966, chance = 17966},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=40, attack=30
-- name=drunk, interval=2000, chance=10, range=7, target=1, duration=3000, areaEffect=stun, shootEffect=holy
-- name=energy, interval=2000, chance=20, range=7, min=-10, max=-30, target=1, areaEffect=energy, shootEffect=energy
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=5, min=20, max=30, areaEffect=blueshimmer
--]]

monster:register()
