-- Hyaena
-- Auto-converted from XML

local monster = Game.createMonsterType("Hyaena")
if not monster then return end

monster:name("Hyaena")
monster:nameDescription("a hyaena")
monster:health(60)
monster:maxHealth(60)
monster:experience(20)
monster:speed(200)
monster:race(RACE_BLOOD)
monster:manaCost(275)
monster:corpseId(6026)
monster:outfit({lookType = 94})
monster:defense(15)
monster:armor(15)
monster:runHealth(30)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isSummonable(true)
monster:isConvinceable(true)
monster:isIllusionable(true)
monster:pushable(true)
monster:staticAttackChance(90)

-- Loot
monster:loot({
    {id = 3976, chance = 50130, maxCount = 3},
    {id = 2666, chance = 30860, maxCount = 2},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=10, attack=20
--]]

monster:register()
