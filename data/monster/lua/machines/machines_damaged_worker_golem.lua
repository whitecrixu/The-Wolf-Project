-- Damaged Worker Golem
-- Converted from XML

local monster = Game.createMonsterType("Damaged Worker Golem")
if not monster then return end

monster:name("Damaged Worker Golem")
monster:nameDescription("a damaged worker golem")
monster:health(260)
monster:maxHealth(260)
monster:experience(95)
monster:speed(200)
monster:race(RACE_ENERGY)
monster:corpseId(9801)
monster:outfit({lookType = 304})
monster:defense(25)
monster:armor(25)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_EARTHDAMAGE, percent = 50},
    {type = COMBAT_HOLYDAMAGE, percent = 50},
    {type = COMBAT_FIREDAMAGE, percent = -10},
    {type = COMBAT_ENERGYDAMAGE, percent = -5},
    {type = COMBAT_PHYSICALDAMAGE, percent = 25},
    {type = COMBAT_ICEDAMAGE, percent = 10},
    {type = COMBAT_DEATHDAMAGE, percent = 10}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Klonk klonk klonk", yell = false},
    {text = "Failure! Failure!", yell = false},
    {text = "Good morning citizen. How may I serve you?", yell = false},
    {text = "Target identified: Rat! Termination initiated!", yell = false},
    {text = "Rrrtttarrrttarrrtta", yell = false},
    {text = "Danger will...chrrr! Danger!", yell = false},
    {text = "Self-diagnosis failed.", yell = false},
    {text = "Aw... chhhrrr orders.", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 68810, maxCount = 88},
    {id = 8309, chance = 1460},
    {id = 5880, chance = 400},
    {id = 9808, chance = 790},
    {id = 10572, chance = 200},
    {id = 2207, chance = 570}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -65},
    {name = "physical", interval = 2000, chance = 15, maxDamage = -45, range = 7}
})

monster:register()
