-- Orc Shaman
-- Converted from XML

local monster = Game.createMonsterType("Orc Shaman")
if not monster then return end

monster:name("Orc Shaman")
monster:nameDescription("a orc shaman")
monster:health(115)
monster:maxHealth(115)
monster:experience(110)
monster:speed(180)
monster:race(RACE_BLOOD)
monster:corpseId(5978)
monster:outfit({lookType = 6})
monster:defense(10)
monster:armor(10)
monster:runHealth(11)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 50},
    {type = COMBAT_HOLYDAMAGE, percent = 25},
    {type = COMBAT_EARTHDAMAGE, percent = -10},
    {type = COMBAT_DEATHDAMAGE, percent = -5}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Huumans stinkk!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 90000, maxCount = 5},
    {id = 2686, chance = 10600, maxCount = 2},
    {id = 2464, chance = 8750},
    {id = 2389, chance = 4850},
    {id = 2188, chance = 1000},
    {id = 12435, chance = 4300},
    {id = 11113, chance = 2100},
    {id = 12434, chance = 6860},
    {id = 12408, chance = 10300},
    {id = 1958, chance = 520}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -25},
    {name = "energy", interval = 2000, chance = 15, minDamage = -20, maxDamage = -31, range = 7},
    {name = "fire", interval = 2000, chance = 5, minDamage = -5, maxDamage = -43, range = 7, radius = 1}
})

monster:register()
