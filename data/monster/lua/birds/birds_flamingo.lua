-- Flamingo
-- Converted from XML

local monster = Game.createMonsterType("Flamingo")
if not monster then return end

monster:name("Flamingo")
monster:nameDescription("a flamingo")
monster:health(25)
monster:maxHealth(25)
monster:experience(0)
monster:speed(210)
monster:race(RACE_BLOOD)
monster:manaCost(250)
monster:corpseId(6054)
monster:outfit({lookType = 212})
monster:defense(5)
monster:armor(5)
monster:runHealth(2)

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
    {id = 12640, chance = 700}
})

-- Attacks (default melee)
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -5}
})

monster:register()
