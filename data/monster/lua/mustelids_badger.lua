-- Badger
-- Auto-converted from XML

local monster = Game.createMonsterType("Badger")
if not monster then return end

monster:name("Badger")
monster:nameDescription("a badger")
monster:health(23)
monster:maxHealth(23)
monster:experience(5)
monster:speed(180)
monster:race(RACE_BLOOD)
monster:manaCost(200)
monster:corpseId(6034)
monster:outfit({lookType = 105})
monster:defense(5)
monster:armor(5)
monster:runHealth(10)

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
    {id = 8845, chance = 40710},
    {id = 7965, chance = 10230},
    {id = 11213, chance = 5130},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-12
--]]

monster:register()
