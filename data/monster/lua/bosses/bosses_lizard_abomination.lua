-- Lizard Abomination
-- Auto-converted from XML

local monster = Game.createMonsterType("Lizard Abomination")
if not monster then return end

monster:name("Lizard Abomination")
monster:nameDescription("a lizard abomination")
monster:health(20000)
monster:maxHealth(20000)
monster:experience(1350)
monster:speed(300)
monster:race(RACE_BLOOD)
monster:outfit({lookType = 364})
monster:defense(60)
monster:armor(55)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 15},
    {type = COMBAT_FIREDAMAGE, percent = -10},
    {type = COMBAT_ENERGYDAMAGE, percent = -10},
    {type = COMBAT_ICEDAMAGE, percent = 20},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_POISON, immunity = true},
})

-- Voices
monster:voices({
    {text = "NOOOO! NOW YOU HERETICS WILL FACE MY GODLY WRATH!", yell = true},
    {text = "RAAARRRR! I WILL DEVOL YOU!", yell = true},
    {text = "I WILL MAKE YOU ZHEE!", yell = true},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-550
-- name=earth, interval=2000, chance=40, max=-980, radius=3, areaEffect=greenspark
-- name=lifedrain, interval=2000, chance=50, min=-200, max=-300, length=8, areaEffect=redshimmer
-- name=speed, interval=2000, chance=20, radius=3, speedchange=-400, areaEffect=poison
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=25, min=50, max=350, areaEffect=blueshimmer
--]]

monster:register()
