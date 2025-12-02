-- demon
-- Converted from XML

local monster = Game.createMonsterType("demon")
if not monster then return end

monster:name("demon")
monster:nameDescription("a demon")
monster:health(50)
monster:maxHealth(50)
monster:experience(25)
monster:speed(150)
monster:race(RACE_BLOOD)
monster:corpseId(5995)
monster:outfit({lookType = 35})
monster:defense(10)
monster:armor(10)
monster:runHealth(5)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 20},
    {type = COMBAT_HOLYDAMAGE, percent = 1},
    {type = COMBAT_EARTHDAMAGE, percent = -12},
    {type = COMBAT_DEATHDAMAGE, percent = -10}
})

-- Loot
monster:loot({
    {id = 2148, chance = 50320, maxCount = 9},
    {id = 2230, chance = 1130},
    {id = 2449, chance = 4900},
    {id = 2379, chance = 1800},
    {id = 2667, chance = 12750},
    {id = 2467, chance = 2510},
    {id = 2461, chance = 1940},
    {id = 2235, chance = 1000},
    {id = 2406, chance = 8870},
    {id = 2559, chance = 9700},
    {id = 1294, chance = 15290, maxCount = 3},
    {id = 12495, chance = 910}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -20},
    {name = "physical", interval = 2000, chance = 10, maxDamage = -25, range = 7}
})

monster:register()
