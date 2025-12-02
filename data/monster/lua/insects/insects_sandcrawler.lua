-- Sandcrawler
-- Auto-converted from XML

local monster = Game.createMonsterType("Sandcrawler")
if not monster then return end

monster:name("Sandcrawler")
monster:nameDescription("a sandcrawler")
monster:health(30)
monster:maxHealth(30)
monster:experience(20)
monster:speed(170)
monster:race(RACE_VENOM)
monster:manaCost(250)
monster:corpseId(11357)
monster:outfit({lookType = 350})
monster:defense(10)
monster:armor(10)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isSummonable(true)
monster:isConvinceable(true)
monster:pushable(false)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = -5},
})

-- Voices
monster:voices({
    {text = "Chrk chrk!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 33333, maxCount = 6},
    {id = 11373, chance = 2173},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=10, attack=3
--]]

monster:register()
