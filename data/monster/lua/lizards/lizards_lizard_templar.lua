-- Lizard Templar
-- Converted from XML

local monster = Game.createMonsterType("Lizard Templar")
if not monster then return end

monster:name("Lizard Templar")
monster:nameDescription("a lizard templar")
monster:health(410)
monster:maxHealth(410)
monster:experience(155)
monster:speed(200)
monster:race(RACE_BLOOD)
monster:corpseId(4251)
monster:outfit({lookType = 113})
monster:defense(20)
monster:armor(20)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 20},
    {type = COMBAT_ICEDAMAGE, percent = 10},
    {type = COMBAT_FIREDAMAGE, percent = -10}
})

-- Immunities
monster:immunities({
    {type = COMBAT_EARTHDAMAGE, combat = true}
})

-- Voices
monster:voices({
    {text = "Hissss!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 84000, maxCount = 60},
    {id = 2406, chance = 9500},
    {id = 2457, chance = 2000},
    {id = 2376, chance = 4000},
    {id = 2394, chance = 1990},
    {id = 2463, chance = 1000},
    {id = 5876, chance = 880},
    {id = 3963, chance = 500},
    {id = 2149, chance = 250},
    {id = 7618, chance = 890},
    {id = 5881, chance = 990},
    {id = 3975, chance = 110}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -65}
})

monster:register()
