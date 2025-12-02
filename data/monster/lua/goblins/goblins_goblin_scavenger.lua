-- Goblin Scavenger
-- Converted from XML

local monster = Game.createMonsterType("Goblin Scavenger")
if not monster then return end

monster:name("Goblin Scavenger")
monster:nameDescription("a goblin scavenger")
monster:health(60)
monster:maxHealth(60)
monster:experience(37)
monster:speed(180)
monster:race(RACE_BLOOD)
monster:manaCost(310)
monster:corpseId(6002)
monster:outfit({lookType = 297})
monster:defense(15)
monster:armor(15)
monster:runHealth(6)

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
    {type = COMBAT_ENERGYDAMAGE, percent = 20},
    {type = COMBAT_HOLYDAMAGE, percent = 1},
    {type = COMBAT_EARTHDAMAGE, percent = -10},
    {type = COMBAT_DEATHDAMAGE, percent = -10}
})

-- Voices
monster:voices({
    {text = "Shiny, Shiny!", yell = false},
    {text = "You mean!", yell = false},
    {text = "All mine!", yell = false},
    {text = "Uhh!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 50810, maxCount = 9},
    {id = 1294, chance = 25560, maxCount = 2},
    {id = 2379, chance = 18280},
    {id = 2230, chance = 12450},
    {id = 2559, chance = 9790},
    {id = 2667, chance = 13640},
    {id = 2461, chance = 10180},
    {id = 2235, chance = 7000},
    {id = 2406, chance = 8900},
    {id = 2467, chance = 7700},
    {id = 2449, chance = 5000}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -25},
    {name = "physical", interval = 2000, chance = 10, maxDamage = -30, range = 7},
    {name = "lifedrain", interval = 2000, chance = 5, minDamage = -22, maxDamage = -30, range = 7},
    {name = "death", interval = 2000, chance = 5, minDamage = -1, maxDamage = -30, range = 7}
})

monster:register()
