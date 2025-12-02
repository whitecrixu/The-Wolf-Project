-- Weakened Demon
-- Auto-converted from XML

local monster = Game.createMonsterType("Weakened Demon")
if not monster then return end

monster:name("Weakened Demon")
monster:nameDescription("a weakened demon")
monster:health(5)
monster:maxHealth(5)
monster:experience(0)
monster:speed(200)
monster:race(RACE_FIRE)
monster:outfit({lookType = 12, lookHead = 94, lookBody = 19, lookLegs = 116, lookFeet = 81})
monster:defense(5)
monster:armor(5)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:staticAttackChance(98)

-- Voices
monster:voices({
    {text = "UH?", yell = false},
})

-- Defense spells (for reference, implement with spell system)
--[[
-- name=invisible, interval=2000, chance=10, duration=4000, areaEffect=blueshimmer
--]]

monster:register()
