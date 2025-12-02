-- Quara Mantassin
-- Converted from XML

local monster = Game.createMonsterType("Quara Mantassin")
if not monster then return end

monster:name("Quara Mantassin")
monster:nameDescription("a quara mantassin")
monster:health(800)
monster:maxHealth(800)
monster:experience(400)
monster:speed(260)
monster:race(RACE_BLOOD)
monster:manaCost(480)
monster:corpseId(6064)
monster:outfit({lookType = 72})
monster:defense(15)
monster:armor(15)
monster:runHealth(80)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isConvinceable(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_EARTHDAMAGE, percent = -10},
    {type = COMBAT_ENERGYDAMAGE, percent = -25}
})

-- Immunities
monster:immunities({
    {type = COMBAT_LIFEDRAIN, combat = true},
    {condition = CONDITION_DROWN, immunity = true},
    {condition = CONDITION_FIRE, immunity = true},
    {type = COMBAT_ICEDAMAGE, combat = true}
})

-- Voices
monster:voices({
    {text = "Zuerk Pachak!", yell = false},
    {text = "Shrrrr", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 100},
    {id = 2148, chance = 50000, maxCount = 29},
    {id = 12445, chance = 11600},
    {id = 2670, chance = 5000, maxCount = 5},
    {id = 2381, chance = 5000},
    {id = 2377, chance = 1010},
    {id = 2654, chance = 1050},
    {id = 2165, chance = 960},
    {id = 2146, chance = 1000},
    {id = 5895, chance = 630},
    {id = 2479, chance = 100},
    {id = 2656, chance = 50}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -95}
})

monster:register()
