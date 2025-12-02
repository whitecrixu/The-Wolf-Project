-- Thornback Tortoise
-- Converted from XML

local monster = Game.createMonsterType("Thornback Tortoise")
if not monster then return end

monster:name("Thornback Tortoise")
monster:nameDescription("a thornback tortoise")
monster:health(300)
monster:maxHealth(300)
monster:experience(150)
monster:speed(200)
monster:race(RACE_BLOOD)
monster:manaCost(490)
monster:corpseId(6073)
monster:outfit({lookType = 198})
monster:defense(40)
monster:armor(40)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isConvinceable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 45},
    {type = COMBAT_EARTHDAMAGE, percent = 20},
    {type = COMBAT_ICEDAMAGE, percent = 20},
    {type = COMBAT_FIREDAMAGE, percent = -10}
})

-- Loot
monster:loot({
    {id = 2148, chance = 89500, maxCount = 48},
    {id = 5678, chance = 790, maxCount = 3},
    {id = 2667, chance = 10800, maxCount = 2},
    {id = 7618, chance = 1600},
    {id = 2789, chance = 700},
    {id = 2787, chance = 1200},
    {id = 2391, chance = 260},
    {id = 10560, chance = 15980},
    {id = 2143, chance = 1600},
    {id = 5899, chance = 800},
    {id = 2144, chance = 800}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -85}
})

monster:register()
