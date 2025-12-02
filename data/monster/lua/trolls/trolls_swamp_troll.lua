-- Swamp Troll
-- Auto-converted from XML

local monster = Game.createMonsterType("Swamp Troll")
if not monster then return end

monster:name("Swamp Troll")
monster:nameDescription("a swamp troll")
monster:health(55)
monster:maxHealth(55)
monster:experience(25)
monster:speed(170)
monster:race(RACE_VENOM)
monster:manaCost(320)
monster:corpseId(6018)
monster:outfit({lookType = 76})
monster:defense(15)
monster:armor(15)
monster:runHealth(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isSummonable(true)
monster:isIllusionable(true)
monster:pushable(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_EARTHDAMAGE, percent = 5},
    {type = COMBAT_FIREDAMAGE, percent = -5},
})

-- Voices
monster:voices({
    {text = "Grrrr", yell = false},
    {text = "Groar!", yell = false},
    {text = "Me strong! Me ate spinach!", yell = false},
})

-- Loot
monster:loot({
    {id = 2667, chance = 60000},
    {id = 2148, chance = 50300, maxCount = 5},
    {id = 2050, chance = 15000},
    {id = 2389, chance = 13000},
    {id = 2235, chance = 10000},
    {id = 2643, chance = 9500},
    {id = 10603, chance = 3100},
    {id = 13506, chance = 2160},
    {id = 5901, chance = 2140},
    {id = 2805, chance = 1200},
    {id = 2580, chance = 60},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-13
--]]

monster:register()
