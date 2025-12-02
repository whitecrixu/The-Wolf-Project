-- Little Corym Charlatan
-- Auto-converted from XML

local monster = Game.createMonsterType("Little Corym Charlatan")
if not monster then return end

monster:name("Little Corym Charlatan")
monster:nameDescription("a little corym charlatan")
monster:health(90)
monster:maxHealth(90)
monster:experience(40)
monster:speed(170)
monster:race(RACE_BLOOD)
monster:corpseId(19729)
monster:outfit({lookType = 532, lookBody = 97, lookLegs = 116})
monster:defense(10)
monster:armor(10)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Voices
monster:voices({
    {text = "Squeeeeeeak!", yell = false},
    {text = "Must have it! Must have it!", yell = false},
    {text = "Gimme! Gimme!", yell = false},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=10, attack=10
--]]

monster:register()
