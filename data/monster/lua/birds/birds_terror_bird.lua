-- Terror Bird
-- Converted from XML

local monster = Game.createMonsterType("Terror Bird")
if not monster then return end

monster:name("Terror Bird")
monster:nameDescription("a terror bird")
monster:health(300)
monster:maxHealth(300)
monster:experience(150)
monster:speed(220)
monster:race(RACE_BLOOD)
monster:manaCost(490)
monster:corpseId(6057)
monster:outfit({lookType = 218})
monster:defense(15)
monster:armor(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isSummonable(true)
monster:isConvinceable(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 20},
    {type = COMBAT_ICEDAMAGE, percent = 20},
    {type = COMBAT_FIREDAMAGE, percent = -10},
    {type = COMBAT_EARTHDAMAGE, percent = -10},
    {type = COMBAT_DEATHDAMAGE, percent = -5}
})

-- Voices
monster:voices({
    {text = "CRAAAHHH!", yell = false},
    {text = "Gruuuh Gruuuh.", yell = false},
    {text = "Carrah Carrah!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 81500, maxCount = 30},
    {id = 3976, chance = 10000, maxCount = 3},
    {id = 2148, chance = 48000, maxCount = 3},
    {id = 11190, chance = 11000},
    {id = 12470, chance = 3000},
    {id = 3970, chance = 630},
    {id = 3970, chance = 150},
    {id = 3970, chance = 260}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -75}
})

monster:register()
