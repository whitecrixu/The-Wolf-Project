-- Corym Charlatan
-- Converted from XML

local monster = Game.createMonsterType("Corym Charlatan")
if not monster then return end

monster:name("Corym Charlatan")
monster:nameDescription("a corym charlatan")
monster:health(250)
monster:maxHealth(250)
monster:experience(150)
monster:speed(180)
monster:race(RACE_BLOOD)
monster:corpseId(19725)
monster:outfit({lookType = 532, lookBody = 97, lookLegs = 116})
monster:defense(10)
monster:armor(10)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_EARTHDAMAGE, percent = 20},
    {type = COMBAT_DEATHDAMAGE, percent = 20},
    {type = COMBAT_ENERGYDAMAGE, percent = 25},
    {type = COMBAT_HOLYDAMAGE, percent = -20}
})

-- Voices
monster:voices({
    {text = "Mehehe!", yell = false},
    {text = "Beware! Me hexing you!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 35},
    {id = 20101, chance = 14285},
    {id = 20100, chance = 12500},
    {id = 2696, chance = 10000},
    {id = 20089, chance = 7692},
    {id = 20099, chance = 7142},
    {id = 20097, chance = 5882},
    {id = 20092, chance = 909},
    {id = 20093, chance = 854},
    {id = 20126, chance = 537},
    {id = 20098, chance = 518},
    {id = 20090, chance = 492}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -85}
})

monster:register()
