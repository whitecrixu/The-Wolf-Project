-- Green Frog
-- Auto-converted from XML

local monster = Game.createMonsterType("Green Frog")
if not monster then return end

monster:name("Green Frog")
monster:nameDescription("a green frog")
monster:health(25)
monster:maxHealth(25)
monster:experience(0)
monster:speed(200)
monster:race(RACE_VENOM)
monster:manaCost(250)
monster:corpseId(6079)
monster:outfit({lookType = 224, lookHead = 69, lookBody = 66, lookLegs = 69, lookFeet = 66})
monster:defense(5)
monster:armor(5)
monster:targetDistance(6)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isSummonable(true)
monster:isConvinceable(true)
monster:isIllusionable(true)
monster:pushable(true)
monster:staticAttackChance(90)

-- Voices
monster:voices({
    {text = "Ribbit!", yell = false},
    {text = "Ribbit! Ribbit!", yell = false},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=10, attack=25
--]]

monster:register()
