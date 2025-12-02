-- Kongra
-- Converted from XML

local monster = Game.createMonsterType("Kongra")
if not monster then return end

monster:name("Kongra")
monster:nameDescription("a kongra")
monster:health(340)
monster:maxHealth(340)
monster:experience(115)
monster:speed(210)
monster:race(RACE_BLOOD)
monster:corpseId(6043)
monster:outfit({lookType = 116})
monster:defense(20)
monster:armor(20)
monster:runHealth(34)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = 20},
    {type = COMBAT_EARTHDAMAGE, percent = 10},
    {type = COMBAT_ENERGYDAMAGE, percent = 5},
    {type = COMBAT_ICEDAMAGE, percent = -15},
    {type = COMBAT_DEATHDAMAGE, percent = -5}
})

-- Voices
monster:voices({
    {text = "Hugah!", yell = false},
    {text = "Ungh! Ungh!", yell = false},
    {text = "Huaauaauaauaa!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 69000, maxCount = 40},
    {id = 2676, chance = 30000, maxCount = 12},
    {id = 2463, chance = 950},
    {id = 2200, chance = 990},
    {id = 5883, chance = 980},
    {id = 2166, chance = 300},
    {id = 2209, chance = 230},
    {id = 7618, chance = 570},
    {id = 12427, chance = 4900}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -60}
})

monster:register()
