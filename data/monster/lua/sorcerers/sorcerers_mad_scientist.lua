-- Mad Scientist
-- Converted from XML

local monster = Game.createMonsterType("Mad Scientist")
if not monster then return end

monster:name("Mad Scientist")
monster:nameDescription("a mad scientist")
monster:health(325)
monster:maxHealth(325)
monster:experience(205)
monster:speed(190)
monster:race(RACE_BLOOD)
monster:corpseId(20439)
monster:outfit({lookType = 133, lookHead = 97, lookLegs = 38, lookFeet = 97, lookAddons = 1})
monster:defense(15)
monster:armor(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = 10},
    {type = COMBAT_EARTHDAMAGE, percent = 20},
    {type = COMBAT_ENERGYDAMAGE, percent = 20},
    {type = COMBAT_ICEDAMAGE, percent = 10},
    {type = COMBAT_HOLYDAMAGE, percent = 20},
    {type = COMBAT_DEATHDAMAGE, percent = -5}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_DROWN, immunity = true}
})

-- Voices
monster:voices({
    {text = "Die in the name of Science!", yell = false},
    {text = "You will regret interrupting my studies!", yell = false},
    {text = "Let me test this!", yell = false},
    {text = "I will study your corpse!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 30000, maxCount = 65},
    {id = 2148, chance = 30000, maxCount = 50},
    {id = 7620, chance = 19000},
    {id = 7618, chance = 19000},
    {id = 2787, chance = 8000, maxCount = 3},
    {id = 2308, chance = 6000},
    {id = 2177, chance = 2000},
    {id = 2162, chance = 2000},
    {id = 7762, chance = 470},
    {id = 6324, chance = 820},
    {id = 2687, chance = 1200, maxCount = 5},
    {id = 7440, chance = 130}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -45},
    {name = "drown", interval = 2000, chance = 15, minDamage = -20, maxDamage = -56, range = 7, radius = 3},
    {name = "earth", interval = 2000, chance = 15, minDamage = -20, maxDamage = -36},
    {name = "speed", interval = 2000, chance = 10, range = 7}
})

monster:register()
