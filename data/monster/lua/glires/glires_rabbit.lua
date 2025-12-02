-- Rabbit
-- Auto-converted from XML

local monster = Game.createMonsterType("Rabbit")
if not monster then return end

monster:name("Rabbit")
monster:nameDescription("a rabbit")
monster:health(15)
monster:maxHealth(15)
monster:experience(0)
monster:speed(180)
monster:race(RACE_BLOOD)
monster:manaCost(220)
monster:corpseId(6017)
monster:outfit({lookType = 74})
monster:defense(5)
monster:armor(5)
monster:runHealth(15)

-- Flags
monster:attackable(true)
monster:hostile(false)
monster:isSummonable(true)
monster:isConvinceable(true)
monster:isIllusionable(true)
monster:pushable(true)
monster:staticAttackChance(90)

-- Loot
monster:loot({
    {id = 2684, chance = 10000, maxCount = 2},
    {id = 2666, chance = 85620, maxCount = 2},
})

monster:register()
