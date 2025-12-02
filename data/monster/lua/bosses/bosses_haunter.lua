-- Haunter
-- Auto-converted from XML

local monster = Game.createMonsterType("Haunter")
if not monster then return end

monster:name("Haunter")
monster:nameDescription("Haunter")
monster:health(8500)
monster:maxHealth(8500)
monster:experience(4000)
monster:speed(270)
monster:race(RACE_BLOOD)
monster:corpseId(9915)
monster:outfit({lookType = 320})
monster:defense(20)
monster:armor(25)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_DEATHDAMAGE, percent = 10},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Surrender and I'll end it quick!", yell = false},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=50, attack=50
-- name=energy, interval=2000, chance=16, max=-130, radius=3, areaEffect=energy
-- name=poisoncondition, interval=2000, chance=16, range=7, target=1, shootEffect=poison, areaEffect=poison
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=16, min=100, max=155, areaEffect=blueshimmer
-- name=speed, interval=2000, chance=16, duration=80000, speedchange=360, areaEffect=redshimmer
--]]

monster:register()
