-- Snake Thing
-- Auto-converted from XML

local monster = Game.createMonsterType("Snake Thing")
if not monster then return end

monster:name("Snake Thing")
monster:nameDescription("snake thing")
monster:health(20000)
monster:maxHealth(20000)
monster:experience(4600)
monster:speed(240)
monster:race(RACE_VENOM)
monster:corpseId(12385)
monster:outfit({lookType = 220})
monster:defense(30)
monster:armor(45)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ICEDAMAGE, percent = 20},
    {type = COMBAT_FIREDAMAGE, percent = -10},
    {type = COMBAT_ENERGYDAMAGE, percent = -10},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
})

-- Voices
monster:voices({
    {text = "POWER! I SEED MORE POWER!", yell = true},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=40, attack=160
-- name=earth, interval=2000, chance=35, max=-500, length=8, spread=3, areaEffect=poison
-- name=manadrain, interval=2000, chance=40, max=-2398, length=8, areaEffect=rednote
-- name=poison, interval=2000, chance=30, min=-30, max=-600, radius=6, areaEffect=poison
--]]

monster:register()
