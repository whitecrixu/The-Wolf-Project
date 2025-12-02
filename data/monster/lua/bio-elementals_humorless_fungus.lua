-- Humorless Fungus
-- Auto-converted from XML

local monster = Game.createMonsterType("Humorless Fungus")
if not monster then return end

monster:name("Humorless Fungus")
monster:nameDescription("a humorless fungus")
monster:health(8000)
monster:maxHealth(8000)
monster:experience(0)
monster:speed(230)
monster:race(RACE_VENOM)
monster:corpseId(17428)
monster:outfit({lookType = 517})
monster:defense(25)
monster:armor(25)
monster:targetDistance(4)

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
    {type = COMBAT_HOLYDAMAGE, percent = 5},
    {type = COMBAT_FIREDAMAGE, percent = 5},
    {type = COMBAT_ENERGYDAMAGE, percent = 15},
    {type = COMBAT_ICEDAMAGE, percent = 15},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Munch munch munch!", yell = false},
    {text = "Chatter", yell = false},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=90, attack=95
-- name=earth, interval=2000, chance=10, range=7, min=-40, max=-197, target=1, shootEffect=smallearth, areaEffect=smallplants
-- name=ice, interval=2000, chance=10, range=7, max=-525, target=1, shootEffect=snowball, areaEffect=icearea
-- name=poisoncondition, interval=2000, chance=10, range=7, min=-400, max=-640, radius=3, areaEffect=greenspark
-- name=drunk, interval=2000, chance=10, range=7, radius=4, target=1, duration=4000, areaEffect=stun
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=5, max=230, areaEffect=blueshimmer
-- name=invisible, interval=2000, chance=10, duration=5000, areaEffect=blueshimmer
--]]

monster:register()
