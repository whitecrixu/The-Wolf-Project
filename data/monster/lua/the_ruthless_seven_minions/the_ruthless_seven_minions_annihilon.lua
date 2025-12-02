-- Annihilon
-- Converted from XML

local monster = Game.createMonsterType("Annihilon")
if not monster then return end

monster:name("Annihilon")
monster:nameDescription("Annihilon")
monster:health(46500)
monster:maxHealth(46500)
monster:experience(15000)
monster:speed(380)
monster:race(RACE_FIRE)
monster:corpseId(8721)
monster:outfit({lookType = 12, lookHead = 19, lookBody = 104, lookLegs = 96, lookFeet = 96})
monster:defense(55)
monster:armor(60)
monster:runHealth(4650)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ICEDAMAGE, percent = 20},
    {type = COMBAT_ENERGYDAMAGE, percent = 95},
    {type = COMBAT_DEATHDAMAGE, percent = 95},
    {type = COMBAT_HOLYDAMAGE, percent = -5}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Flee as long as you can!", yell = false},
    {text = "Annihilon's might will crush you all!", yell = false},
    {text = "I am coming for you!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 100},
    {id = 9810, chance = 62390},
    {id = 7632, chance = 38940},
    {id = 7633, chance = 38940},
    {id = 2452, chance = 28320},
    {id = 7368, chance = 23010, maxCount = 50},
    {id = 2158, chance = 23010},
    {id = 2127, chance = 23010},
    {id = 2154, chance = 22570},
    {id = 6529, chance = 21680, maxCount = 46},
    {id = 2427, chance = 21240},
    {id = 2381, chance = 20800},
    {id = 2156, chance = 20800},
    {id = 7439, chance = 19910},
    {id = 7840, chance = 19470, maxCount = 96},
    {id = 9971, chance = 19470},
    {id = 2152, chance = 19030, maxCount = 30},
    {id = 2547, chance = 19030, maxCount = 99},
    {id = 5944, chance = 18580, maxCount = 5},
    {id = 2153, chance = 17700},
    {id = 7366, chance = 16810, maxCount = 70},
    {id = 2155, chance = 15930},
    {id = 7440, chance = 15490},
    {id = 8473, chance = 14160},
    {id = 7591, chance = 13720},
    {id = 7421, chance = 13720},
    {id = 2519, chance = 13270},
    {id = 8472, chance = 13270},
    {id = 5954, chance = 12830, maxCount = 2},
    {id = 7590, chance = 12390},
    {id = 8891, chance = 10620},
    {id = 2528, chance = 10180},
    {id = 7387, chance = 7520},
    {id = 2515, chance = 7520},
    {id = 2514, chance = 3980},
    {id = 2520, chance = 3540},
    {id = 7431, chance = 1770},
    {id = 8877, chance = 1330},
    {id = 8928, chance = 1330},
    {id = 8929, chance = 440}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -360},
    {name = "death", interval = 1000, chance = 11, maxDamage = -600, length = 8},
    {name = "death", interval = 2000, chance = 15, minDamage = -200, maxDamage = -700, radius = 4},
    {name = "physical", interval = 3000, chance = 18, minDamage = -50, maxDamage = -255, radius = 5},
    {name = "fire", interval = 2000, chance = 15, minDamage = -50, maxDamage = -600, radius = 6}
})

monster:register()
