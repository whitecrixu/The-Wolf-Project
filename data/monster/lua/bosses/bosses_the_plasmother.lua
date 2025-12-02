-- The Plasmother
-- Converted from XML

local monster = Game.createMonsterType("The Plasmother")
if not monster then return end

monster:name("The Plasmother")
monster:nameDescription("the plasmother")
monster:health(16050)
monster:maxHealth(16050)
monster:experience(8900)
monster:speed(310)
monster:race(RACE_VENOM)
monster:corpseId(6532)
monster:outfit({lookType = 238})
monster:defense(30)
monster:armor(30)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = -20},
    {type = COMBAT_ENERGYDAMAGE, percent = 15}
})

-- Immunities
monster:immunities({
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {type = COMBAT_LIFEDRAIN, combat = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Blubb", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 10000, maxCount = 70},
    {id = 2148, chance = 10000, maxCount = 60},
    {id = 2148, chance = 10000, maxCount = 45},
    {id = 2152, chance = 10000, maxCount = 13},
    {id = 6500, chance = 10000},
    {id = 2144, chance = 10000, maxCount = 3},
    {id = 2146, chance = 10000, maxCount = 3},
    {id = 5944, chance = 35000},
    {id = 6535, chance = 100000}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -80},
    {name = "speed", interval = 1000, chance = 8, radius = 6},
    {name = "earth", interval = 2000, chance = 15, minDamage = -200, maxDamage = -350, radius = 4},
    {name = "earth", interval = 3000, chance = 15, minDamage = -200, maxDamage = -530, radius = 4}
})

monster:register()
