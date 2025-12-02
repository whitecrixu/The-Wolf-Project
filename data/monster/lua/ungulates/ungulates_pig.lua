-- Pig
-- Converted from XML

local monster = Game.createMonsterType("Pig")
if not monster then return end

monster:name("Pig")
monster:nameDescription("a pig")
monster:health(25)
monster:maxHealth(25)
monster:experience(0)
monster:speed(130)
monster:race(RACE_BLOOD)
monster:manaCost(255)
monster:corpseId(6000)
monster:outfit({lookType = 60})
monster:defense(0)
monster:armor(0)
monster:runHealth(2)

-- Flags
monster:attackable(true)
monster:hostile(false)
monster:isSummonable(true)
monster:isConvinceable(true)
monster:isIllusionable(true)
monster:pushable(true)
monster:staticAttackChance(90)

-- Voices
monster:voices({
    {text = "Oink oink", yell = false},
    {text = "Oink", yell = false}
})

-- Loot
monster:loot({
    {id = 2666, chance = 64000, maxCount = 4},
    {id = 10610, chance = 950}
})

-- Attacks (default melee)
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -5}
})

monster:register()
