-- Thief
-- Auto-converted from XML

local monster = Game.createMonsterType("Thief")
if not monster then return end

monster:name("Thief")
monster:nameDescription("a thief")
monster:health(60)
monster:maxHealth(60)
monster:experience(5)
monster:speed(170)
monster:race(RACE_BLOOD)
monster:corpseId(20518)
monster:outfit({lookType = 134, lookHead = 114, lookBody = 97, lookLegs = 21, lookFeet = 41})
monster:defense(15)
monster:armor(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Alarm!", yell = false},
    {text = "Don't let him escape!", yell = false},
    {text = "Intruder! Get him!", yell = false},
    {text = "You dare stealing from us?", yell = false},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-35
--]]

monster:register()
