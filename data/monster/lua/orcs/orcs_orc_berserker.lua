-- Orc Berserker
-- Converted from XML

local monster = Game.createMonsterType("Orc Berserker")
if not monster then return end

monster:name("Orc Berserker")
monster:nameDescription("a orc berserker")
monster:health(210)
monster:maxHealth(210)
monster:experience(195)
monster:speed(195)
monster:race(RACE_BLOOD)
monster:manaCost(590)
monster:corpseId(5980)
monster:outfit({lookType = 8})
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
    {type = COMBAT_ENERGYDAMAGE, percent = 15},
    {type = COMBAT_HOLYDAMAGE, percent = 10},
    {type = COMBAT_EARTHDAMAGE, percent = -10},
    {type = COMBAT_DEATHDAMAGE, percent = -10}
})

-- Voices
monster:voices({
    {text = "KRAK ORRRRRRK!", yell = true}
})

-- Loot
monster:loot({
    {id = 2148, chance = 54000, maxCount = 12},
    {id = 2671, chance = 10400},
    {id = 11113, chance = 3000},
    {id = 2464, chance = 890},
    {id = 2044, chance = 830},
    {id = 2381, chance = 7280},
    {id = 2378, chance = 6110},
    {id = 3965, chance = 5000},
    {id = 12433, chance = 9400},
    {id = 12435, chance = 4000}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -120}
})

monster:register()
