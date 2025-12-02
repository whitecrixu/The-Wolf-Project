-- Minotaur Invader
-- Converted from XML

local monster = Game.createMonsterType("Minotaur Invader")
if not monster then return end

monster:name("Minotaur Invader")
monster:nameDescription("a minotaur invader")
monster:health(1850)
monster:maxHealth(1850)
monster:experience(1600)
monster:speed(250)
monster:race(RACE_BLOOD)
monster:corpseId(5983)
monster:outfit({lookType = 29})
monster:defense(20)
monster:armor(20)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = 20}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Loot
monster:loot({
    {id = 2148, chance = 59640, maxCount = 160},
    {id = 12428, chance = 8330, maxCount = 2},
    {id = 12438, chance = 5040},
    {id = 2465, chance = 4390},
    {id = 2464, chance = 3000},
    {id = 2513, chance = 2000},
    {id = 5878, chance = 1000},
    {id = 2580, chance = 480},
    {id = 2387, chance = 400},
    {id = 7618, chance = 370},
    {id = 7401, chance = 90}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -350}
})

monster:register()
