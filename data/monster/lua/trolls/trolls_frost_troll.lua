-- Frost Troll
-- Converted from XML

local monster = Game.createMonsterType("Frost Troll")
if not monster then return end

monster:name("Frost Troll")
monster:nameDescription("a frost troll")
monster:health(55)
monster:maxHealth(55)
monster:experience(23)
monster:speed(190)
monster:race(RACE_BLOOD)
monster:manaCost(300)
monster:corpseId(5998)
monster:outfit({lookType = 53})
monster:defense(15)
monster:armor(15)
monster:runHealth(5)

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
    {type = COMBAT_FIREDAMAGE, percent = 50},
    {type = COMBAT_HOLYDAMAGE, percent = 10},
    {type = COMBAT_EARTHDAMAGE, percent = -10},
    {type = COMBAT_ENERGYDAMAGE, percent = -10},
    {type = COMBAT_DEATHDAMAGE, percent = -15}
})

-- Voices
monster:voices({
    {text = "Brrrr", yell = false},
    {text = "Broar!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 50840, maxCount = 12},
    {id = 2389, chance = 21500},
    {id = 2667, chance = 18000},
    {id = 2512, chance = 15850},
    {id = 2384, chance = 15500},
    {id = 2245, chance = 8300},
    {id = 10565, chance = 2000},
    {id = 2651, chance = 1200}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -20}
})

monster:register()
