-- Lizard Noble
-- Converted from XML

local monster = Game.createMonsterType("Lizard Noble")
if not monster then return end

monster:name("Lizard Noble")
monster:nameDescription("a lizard noble")
monster:health(7000)
monster:maxHealth(7000)
monster:experience(2000)
monster:speed(200)
monster:race(RACE_BLOOD)
monster:corpseId(6041)
monster:outfit({lookType = 115})
monster:defense(15)
monster:armor(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:pushable(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = 90}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true},
    {type = COMBAT_EARTHDAMAGE, combat = true}
})

-- Voices
monster:voices({
    {text = "Where are zhe guardz when you need zhem!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 91300, maxCount = 100},
    {id = 2152, chance = 10000, maxCount = 20},
    {id = 7588, chance = 2550},
    {id = 2147, chance = 7100, maxCount = 5},
    {id = 7591, chance = 2900},
    {id = 5876, chance = 220},
    {id = 5881, chance = 650}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -40},
    {name = "earth", interval = 2000, chance = 25, minDamage = -120, maxDamage = -250, range = 7},
    {name = "manadrain", interval = 2000, chance = 10, maxDamage = -100, range = 7}
})

monster:register()
