-- Silencer
-- Converted from XML

local monster = Game.createMonsterType("Silencer")
if not monster then return end

monster:name("Silencer")
monster:nameDescription("Silencer")
monster:health(4900)
monster:maxHealth(4900)
monster:experience(3800)
monster:speed(230)
monster:race(RACE_BLOOD)
monster:corpseId(22489)
monster:outfit({lookType = 585})
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
    {type = COMBAT_PHYSICALDAMAGE, percent = 5},
    {type = COMBAT_DEATHDAMAGE, percent = 70},
    {type = COMBAT_FIREDAMAGE, percent = 30},
    {type = COMBAT_ENERGYDAMAGE, percent = 15},
    {type = COMBAT_ICEDAMAGE, percent = 10},
    {type = COMBAT_HOLYDAMAGE, percent = -25}
})

-- Immunities
monster:immunities({
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Prrrroooaaaah!!! PRROAAAH!!", yell = false},
    {text = "PRRRROOOOOAAAAAHHHH!!!", yell = false},
    {text = "HUUUSSSSSSSSH!!", yell = false},
    {text = "Hussssssh!!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 100},
    {id = 2152, chance = 100000, maxCount = 8},
    {id = 2165, chance = 1200},
    {id = 2195, chance = 360},
    {id = 2521, chance = 2000},
    {id = 7368, chance = 7600, maxCount = 10},
    {id = 7387, chance = 960},
    {id = 7407, chance = 2000},
    {id = 7413, chance = 2200},
    {id = 7451, chance = 640},
    {id = 7454, chance = 2400},
    {id = 7885, chance = 960},
    {id = 7886, chance = 480},
    {id = 22396, chance = 560},
    {id = 22534, chance = 17000},
    {id = 22535, chance = 8410}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -150},
    {name = "silencer skill reducer", interval = 2000, chance = 10, range = 3},
    {name = "manadrain", interval = 2000, chance = 15, minDamage = -40, maxDamage = -150, radius = 4}
})

monster:register()
