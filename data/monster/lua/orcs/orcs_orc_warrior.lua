-- Orc Warrior
-- Converted from XML

local monster = Game.createMonsterType("Orc Warrior")
if not monster then return end

monster:name("Orc Warrior")
monster:nameDescription("a orc warrior")
monster:health(125)
monster:maxHealth(125)
monster:experience(50)
monster:speed(190)
monster:race(RACE_BLOOD)
monster:manaCost(360)
monster:corpseId(5979)
monster:outfit({lookType = 7})
monster:defense(15)
monster:armor(15)
monster:runHealth(12)

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
    {type = COMBAT_ENERGYDAMAGE, percent = 30},
    {type = COMBAT_HOLYDAMAGE, percent = 10},
    {type = COMBAT_EARTHDAMAGE, percent = -10},
    {type = COMBAT_DEATHDAMAGE, percent = -10}
})

-- Voices
monster:voices({
    {text = "Grow truk grrrr.", yell = false},
    {text = "Trak grrrr brik.", yell = false},
    {text = "Alk!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 65000, maxCount = 15},
    {id = 2666, chance = 15000},
    {id = 2464, chance = 7360},
    {id = 2530, chance = 560},
    {id = 12435, chance = 4000},
    {id = 11113, chance = 700},
    {id = 12436, chance = 980},
    {id = 12409, chance = 10800},
    {id = 2411, chance = 120}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -60}
})

monster:register()
