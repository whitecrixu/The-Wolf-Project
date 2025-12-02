-- The Frog Prince
-- Auto-converted from XML

local monster = Game.createMonsterType("The Frog Prince")
if not monster then return end

monster:name("The Frog Prince")
monster:nameDescription("the frog prince")
monster:health(55)
monster:maxHealth(55)
monster:experience(1)
monster:speed(230)
monster:race(RACE_VENOM)
monster:manaCost(250)
monster:corpseId(6079)
monster:outfit({lookType = 224, lookHead = 69, lookBody = 66, lookLegs = 69, lookFeet = 66})
monster:defense(2)
monster:armor(3)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isSummonable(true)
monster:isConvinceable(true)
monster:isIllusionable(true)
monster:pushable(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 85},
    {type = COMBAT_ICEDAMAGE, percent = 90},
    {type = COMBAT_FIREDAMAGE, percent = 10},
})

-- Voices
monster:voices({
    {text = "Ribbit!", yell = false},
    {text = "Ribbit! Ribbit!", yell = false},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=10, attack=1
--]]

monster:register()
