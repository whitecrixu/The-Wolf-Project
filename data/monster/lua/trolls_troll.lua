-- Troll
-- Auto-converted from XML

local monster = Game.createMonsterType("Troll")
if not monster then return end

monster:name("Troll")
monster:nameDescription("a troll")
monster:health(50)
monster:maxHealth(50)
monster:experience(20)
monster:speed(170)
monster:race(RACE_BLOOD)
monster:manaCost(290)
monster:corpseId(5960)
monster:outfit({lookType = 15})
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
    {type = COMBAT_ENERGYDAMAGE, percent = 25},
    {type = COMBAT_HOLYDAMAGE, percent = 10},
    {type = COMBAT_EARTHDAMAGE, percent = -10},
    {type = COMBAT_DEATHDAMAGE, percent = -10},
})

-- Voices
monster:voices({
    {text = "Grrrr", yell = false},
    {text = "Groar", yell = false},
    {text = "Gruntz!", yell = false},
    {text = "Hmmm, bugs", yell = false},
    {text = "Hmmm, dogs", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 65300, maxCount = 12},
    {id = 2380, chance = 18000},
    {id = 2666, chance = 15000},
    {id = 2389, chance = 13000},
    {id = 2461, chance = 12000},
    {id = 2643, chance = 10000},
    {id = 2120, chance = 7950},
    {id = 2448, chance = 5000},
    {id = 2512, chance = 4730},
    {id = 10606, chance = 1000},
    {id = 2170, chance = 80},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-15
--]]

monster:register()
