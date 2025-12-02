-- Robby The Reckless
-- Auto-converted from XML

local monster = Game.createMonsterType("Robby The Reckless")
if not monster then return end

monster:name("Robby The Reckless")
monster:nameDescription("Robby The Reckless")
monster:health(155)
monster:maxHealth(155)
monster:experience(110)
monster:speed(220)
monster:race(RACE_BLOOD)
monster:corpseId(20498)
monster:outfit({lookType = 129, lookHead = 76, lookBody = 132, lookLegs = 118, lookFeet = 114, lookAddons = 1})
monster:defense(25)
monster:armor(25)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Loot
monster:loot({
    {id = 2152, chance = 100000, maxCount = 85},
    {id = 14903, chance = 100000},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-80
--]]

monster:register()
