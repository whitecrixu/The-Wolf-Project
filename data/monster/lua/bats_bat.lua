-- Bat
-- Auto-converted from XML

local monster = Game.createMonsterType("Bat")
if not monster then return end

monster:name("Bat")
monster:nameDescription("a bat")
monster:health(30)
monster:maxHealth(30)
monster:experience(10)
monster:speed(230)
monster:race(RACE_BLOOD)
monster:manaCost(250)
monster:corpseId(6053)
monster:outfit({lookType = 122})
monster:defense(5)
monster:armor(5)
monster:runHealth(3)

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
    {type = COMBAT_EARTHDAMAGE, percent = -20},
})

-- Voices
monster:voices({
    {text = "Flap!Flap!", yell = false},
})

-- Loot
monster:loot({
    {id = 5894, chance = 1220},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=10, attack=8
--]]

monster:register()
