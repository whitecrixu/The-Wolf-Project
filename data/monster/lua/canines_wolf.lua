-- Wolf
-- Auto-converted from XML

local monster = Game.createMonsterType("Wolf")
if not monster then return end

monster:name("Wolf")
monster:nameDescription("a wolf")
monster:health(25)
monster:maxHealth(25)
monster:experience(18)
monster:speed(160)
monster:race(RACE_BLOOD)
monster:manaCost(255)
monster:corpseId(5968)
monster:outfit({lookType = 27})
monster:defense(5)
monster:armor(5)
monster:runHealth(8)

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
    {type = COMBAT_EARTHDAMAGE, percent = 5},
    {type = COMBAT_HOLYDAMAGE, percent = 5},
    {type = COMBAT_ICEDAMAGE, percent = -5},
    {type = COMBAT_DEATHDAMAGE, percent = -5},
})

-- Voices
monster:voices({
    {text = "Yoooohhuuu!", yell = false},
    {text = "Grrrrrr", yell = false},
})

-- Loot
monster:loot({
    {id = 2666, chance = 55000, maxCount = 2},
    {id = 5897, chance = 980},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=10, attack=20
--]]

monster:register()
