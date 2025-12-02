-- Fire Devil
-- Converted from XML

local monster = Game.createMonsterType("Fire Devil")
if not monster then return end

monster:name("Fire Devil")
monster:nameDescription("a fire devil")
monster:health(200)
monster:maxHealth(200)
monster:experience(145)
monster:speed(190)
monster:race(RACE_BLOOD)
monster:manaCost(530)
monster:corpseId(5985)
monster:outfit({lookType = 40})
monster:defense(10)
monster:armor(10)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isSummonable(true)
monster:isConvinceable(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 30},
    {type = COMBAT_EARTHDAMAGE, percent = 20},
    {type = COMBAT_DEATHDAMAGE, percent = 5},
    {type = COMBAT_PHYSICALDAMAGE, percent = -5},
    {type = COMBAT_ICEDAMAGE, percent = -20},
    {type = COMBAT_HOLYDAMAGE, percent = -10}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Hot, eh?", yell = false},
    {text = "Hell, oh hell!", yell = false}
})

-- Loot
monster:loot({
    {id = 12469, chance = 19770},
    {id = 2050, chance = 10000},
    {id = 2260, chance = 10950},
    {id = 2568, chance = 1100},
    {id = 2419, chance = 3000},
    {id = 2050, chance = 1420, maxCount = 2},
    {id = 2387, chance = 1500},
    {id = 2150, chance = 300},
    {id = 2515, chance = 210},
    {id = 2185, chance = 460}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -45},
    {name = "fire", interval = 2000, chance = 20, minDamage = -60, maxDamage = -90, range = 7, radius = 4},
    {name = "fire", interval = 2000, chance = 15, minDamage = -20, maxDamage = -50, range = 7, radius = 2}
})

monster:register()
