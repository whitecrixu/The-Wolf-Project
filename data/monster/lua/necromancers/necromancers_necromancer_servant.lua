-- Necromancer Servant
-- Auto-converted from XML

local monster = Game.createMonsterType("Necromancer Servant")
if not monster then return end

monster:name("Necromancer Servant")
monster:nameDescription("a necromancer servant")
monster:health(580)
monster:maxHealth(580)
monster:experience(580)
monster:speed(210)
monster:race(RACE_BLOOD)
monster:manaCost(390)
monster:corpseId(20455)
monster:outfit({lookType = 9})
monster:defense(11)
monster:armor(11)
monster:targetDistance(4)
monster:runHealth(10)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isSummonable(true)
monster:isConvinceable(true)
monster:isIllusionable(true)
monster:pushable(false)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = -8},
    {type = COMBAT_DEATHDAMAGE, percent = -7},
})

-- Voices
monster:voices({
    {text = "Blib!", yell = false},
    {text = "Blub!", yell = false},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=20, attack=30
-- name=physical, interval=1000, chance=10, range=7, min=-5, max=-40, shootEffect=throwingknife
--]]

monster:register()
