-- Winter Wolf
-- Converted from XML

local monster = Game.createMonsterType("Winter Wolf")
if not monster then return end

monster:name("Winter Wolf")
monster:nameDescription("a winter wolf")
monster:health(30)
monster:maxHealth(30)
monster:experience(20)
monster:speed(160)
monster:race(RACE_BLOOD)
monster:manaCost(260)
monster:corpseId(5997)
monster:outfit({lookType = 52})
monster:defense(5)
monster:armor(5)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isSummonable(true)
monster:isConvinceable(true)
monster:isIllusionable(true)
monster:pushable(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ICEDAMAGE, percent = 20},
    {type = COMBAT_FIREDAMAGE, percent = 10},
    {type = COMBAT_HOLYDAMAGE, percent = 5},
    {type = COMBAT_ENERGYDAMAGE, percent = -5},
    {type = COMBAT_DEATHDAMAGE, percent = -5}
})

-- Voices
monster:voices({
    {text = "Yoooohhuuuuu!", yell = false}
})

-- Loot
monster:loot({
    {id = 2666, chance = 30000, maxCount = 2},
    {id = 11212, chance = 10000}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -30}
})

monster:register()
