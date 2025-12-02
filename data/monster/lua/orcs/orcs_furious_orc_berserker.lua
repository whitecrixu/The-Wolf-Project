-- Furious Orc Berserker
-- Converted from XML

local monster = Game.createMonsterType("Furious Orc Berserker")
if not monster then return end

monster:name("Furious Orc Berserker")
monster:nameDescription("a furious orc berserker")
monster:health(15)
monster:maxHealth(15)
monster:experience(0)
monster:speed(380)
monster:race(RACE_BLOOD)
monster:manaCost(220)
monster:corpseId(6017)
monster:outfit({lookType = 74})
monster:defense(2)
monster:armor(1)
monster:runHealth(1)

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
    {id = 2684, chance = 9000, maxCount = 2},
    {id = 2666, chance = 20000, maxCount = 2}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = 0}
})

monster:register()
