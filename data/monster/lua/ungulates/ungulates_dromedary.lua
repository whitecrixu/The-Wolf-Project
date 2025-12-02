-- Dromedary
-- Converted from XML

local monster = Game.createMonsterType("Dromedary")
if not monster then return end

monster:name("Dromedary")
monster:nameDescription("a dromedary")
monster:health(45)
monster:maxHealth(45)
monster:experience(0)
monster:speed(170)
monster:race(RACE_BLOOD)
monster:corpseId(13528)
monster:outfit({lookType = 404})
monster:defense(5)
monster:armor(5)
monster:runHealth(4)

-- Flags
monster:attackable(true)
monster:hostile(false)
monster:isIllusionable(true)
monster:pushable(true)
monster:staticAttackChance(90)

-- Voices
monster:voices({
    {text = "Snort", yell = false},
    {text = "Grunt!", yell = false}
})

-- Loot
monster:loot({
    {id = 2666, chance = 36000, maxCount = 2},
    {id = 13939, chance = 1000}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -8},
    {name = "drunk", interval = 4000, chance = 5}
})

monster:register()
