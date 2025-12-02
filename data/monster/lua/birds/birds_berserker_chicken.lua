-- Berserker Chicken
-- Converted from XML

local monster = Game.createMonsterType("Berserker Chicken")
if not monster then return end

monster:name("Berserker Chicken")
monster:nameDescription("a berserker chicken")
monster:health(465)
monster:maxHealth(465)
monster:experience(220)
monster:speed(300)
monster:race(RACE_BLOOD)
monster:manaCost(220)
monster:corpseId(6042)
monster:outfit({lookType = 111})
monster:defense(35)
monster:armor(30)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_HOLYDAMAGE, percent = 10},
    {type = COMBAT_DEATHDAMAGE, percent = 10},
    {type = COMBAT_FIREDAMAGE, percent = 10},
    {type = COMBAT_ENERGYDAMAGE, percent = 10},
    {type = COMBAT_ICEDAMAGE, percent = 10},
    {type = COMBAT_EARTHDAMAGE, percent = 10},
    {type = COMBAT_PHYSICALDAMAGE, percent = -20}
})

-- Immunities
monster:immunities({
    {type = COMBAT_LIFEDRAIN, combat = true},
    {condition = CONDITION_DROWN, immunity = true}
})

-- Voices
monster:voices({
    {text = "Gokgoooook", yell = false},
    {text = "Cluck Cluck", yell = false},
    {text = "I will fill MY cushion with YOUR hair! CLUCK!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 100}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 1200, chance = 100, minDamage = 0, maxDamage = -200},
    {name = "drown", interval = 2000, chance = 15, minDamage = -41, maxDamage = -70},
    {name = "Blood Rage", interval = 2000, chance = 30}
})

monster:register()
