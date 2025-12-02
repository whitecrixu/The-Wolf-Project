-- Sheep
-- Converted from XML

local monster = Game.createMonsterType("Sheep")
if not monster then return end

monster:name("Sheep")
monster:nameDescription("a sheep")
monster:health(20)
monster:maxHealth(20)
monster:experience(0)
monster:speed(110)
monster:race(RACE_BLOOD)
monster:manaCost(250)
monster:corpseId(5991)
monster:outfit({lookType = 14})
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

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = -5}
})

-- Voices
monster:voices({
    {text = "Maeh", yell = false}
})

-- Loot
monster:loot({
    {id = 2666, chance = 70000, maxCount = 4},
    {id = 11236, chance = 1000}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1}
})

monster:register()
