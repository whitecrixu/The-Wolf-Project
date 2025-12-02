-- Shark
-- Converted from XML

local monster = Game.createMonsterType("Shark")
if not monster then return end

monster:name("Shark")
monster:nameDescription("a shark")
monster:health(1200)
monster:maxHealth(1200)
monster:experience(700)
monster:speed(230)
monster:race(RACE_BLOOD)
monster:corpseId(15287)
monster:outfit({lookType = 453})
monster:defense(15)
monster:armor(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 1},
    {type = COMBAT_FIREDAMAGE, percent = 1},
    {type = COMBAT_ICEDAMAGE, percent = 1},
    {type = COMBAT_ENERGYDAMAGE, percent = -5},
    {type = COMBAT_EARTHDAMAGE, percent = 20}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_DROWN, immunity = true}
})

-- Voices
monster:voices({
    {text = "Rarr chomp chomp!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 100},
    {id = 2148, chance = 40000, maxCount = 38},
    {id = 2667, chance = 25000, maxCount = 4},
    {id = 15430, chance = 9090},
    {id = 13870, chance = 1270},
    {id = 2146, chance = 1222},
    {id = 7632, chance = 550},
    {id = 5895, chance = 161}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -110}
})

monster:register()
