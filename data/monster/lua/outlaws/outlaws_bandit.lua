-- Bandit
-- Converted from XML

local monster = Game.createMonsterType("Bandit")
if not monster then return end

monster:name("Bandit")
monster:nameDescription("a bandit")
monster:health(245)
monster:maxHealth(245)
monster:experience(65)
monster:speed(180)
monster:race(RACE_BLOOD)
monster:manaCost(450)
monster:corpseId(20331)
monster:outfit({lookType = 129, lookHead = 58, lookBody = 59, lookLegs = 45, lookFeet = 114})
monster:defense(15)
monster:armor(15)
monster:runHealth(24)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isSummonable(true)
monster:isConvinceable(true)
monster:isIllusionable(true)
monster:pushable(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = -10},
    {type = COMBAT_DEATHDAMAGE, percent = -5}
})

-- Voices
monster:voices({
    {text = "Your money or your life!", yell = false},
    {text = "Hand me your purse!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 49000, maxCount = 30},
    {id = 2386, chance = 29900},
    {id = 2511, chance = 16800},
    {id = 2649, chance = 15500},
    {id = 2398, chance = 10100},
    {id = 2458, chance = 5000},
    {id = 2465, chance = 2500},
    {id = 2459, chance = 520},
    {id = 2685, chance = 7630, maxCount = 2}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -50}
})

monster:register()
