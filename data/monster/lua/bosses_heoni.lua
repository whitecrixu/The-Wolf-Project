-- Heoni
-- Auto-converted from XML

local monster = Game.createMonsterType("Heoni")
if not monster then return end

monster:name("Heoni")
monster:nameDescription("heoni")
monster:health(795)
monster:maxHealth(795)
monster:experience(515)
monster:speed(300)
monster:race(RACE_BLOOD)
monster:corpseId(6302)
monster:outfit({lookType = 239})
monster:defense(18)
monster:armor(25)
monster:runHealth(300)

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
    {type = COMBAT_ENERGYDAMAGE, percent = 20},
    {type = COMBAT_ICEDAMAGE, percent = 10},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Shriiiek", yell = false},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=50, attack=40
-- name=poisoncondition, interval=2000, chance=15, min=-20, max=-240, length=8, spread=3, areaEffect=poison
-- name=drunk, interval=2000, chance=13, length=8, spread=3, duration=25000, areaEffect=whitenote
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=11, min=76, max=84, areaEffect=blueshimmer
-- name=speed, interval=2000, chance=10, duration=5000, speedchange=290, areaEffect=redshimmer
--]]

monster:register()
