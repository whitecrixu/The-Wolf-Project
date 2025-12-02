-- Goblin
-- Auto-converted from XML

local monster = Game.createMonsterType("Goblin")
if not monster then return end

monster:name("Goblin")
monster:nameDescription("a goblin")
monster:health(50)
monster:maxHealth(50)
monster:experience(25)
monster:speed(150)
monster:race(RACE_BLOOD)
monster:manaCost(290)
monster:corpseId(6002)
monster:outfit({lookType = 61})
monster:defense(10)
monster:armor(10)
monster:runHealth(15)

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
    {type = COMBAT_EARTHDAMAGE, percent = -12},
    {type = COMBAT_DEATHDAMAGE, percent = -10},
})

-- Voices
monster:voices({
    {text = "Me have him!", yell = false},
    {text = "Zig Zag! Gobo attack!", yell = false},
    {text = "Help! Goblinkiller!", yell = false},
    {text = "Bugga! Bugga!", yell = false},
    {text = "Me green, me mean!", yell = false},
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
    {id = 12495, chance = 910},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=10, attack=10
-- name=physical, interval=2000, chance=10, range=7, max=-25, shootEffect=smallstone
--]]

monster:register()
