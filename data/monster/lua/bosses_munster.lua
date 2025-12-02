-- Munster
-- Auto-converted from XML

local monster = Game.createMonsterType("Munster")
if not monster then return end

monster:name("Munster")
monster:nameDescription("a munster")
monster:health(58)
monster:maxHealth(58)
monster:experience(23)
monster:speed(200)
monster:race(RACE_BLOOD)
monster:manaCost(250)
monster:corpseId(2813)
monster:outfit({lookType = 56})
monster:defense(4)
monster:armor(2)
monster:runHealth(10)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isSummonable(true)
monster:isConvinceable(true)
monster:isIllusionable(true)
monster:pushable(true)
monster:staticAttackChance(80)

-- Voices
monster:voices({
    {text = "Meeeeep!", yell = false},
})

-- Summons
monster:summons({
    {name = "Rat", chance = 20, interval = 2000, max = 2},
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 16},
    {id = 2696, chance = 50000},
    {id = 2687, chance = 5000},
    {id = 2650, chance = 50000},
    {id = 2449, chance = 5000},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, min=-1, max=-15
--]]

monster:register()
