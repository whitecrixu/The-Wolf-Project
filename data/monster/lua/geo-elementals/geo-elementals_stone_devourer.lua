-- Stone Devourer
-- Converted from XML

local monster = Game.createMonsterType("Stone Devourer")
if not monster then return end

monster:name("Stone Devourer")
monster:nameDescription("a stone devourer")
monster:health(4200)
monster:maxHealth(4200)
monster:experience(2900)
monster:speed(250)
monster:race(RACE_UNDEAD)
monster:corpseId(18375)
monster:outfit({lookType = 486})
monster:defense(35)
monster:armor(35)
monster:runHealth(420)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_DEATHDAMAGE, percent = 1},
    {type = COMBAT_ICEDAMAGE, percent = 30},
    {type = COMBAT_PHYSICALDAMAGE, percent = 1},
    {type = COMBAT_ENERGYDAMAGE, percent = 30},
    {type = COMBAT_HOLYDAMAGE, percent = 30}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_FIRE, immunity = true},
    {type = COMBAT_EARTHDAMAGE, combat = true}
})

-- Voices
monster:voices({
    {text = "Rumble!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 100},
    {id = 2152, chance = 92000, maxCount = 7},
    {id = 18431, chance = 18679},
    {id = 18432, chance = 16320},
    {id = 7590, chance = 15610, maxCount = 2},
    {id = 7620, chance = 15050, maxCount = 2},
    {id = 7589, chance = 14900, maxCount = 2},
    {id = 8473, chance = 14410},
    {id = 7588, chance = 13840, maxCount = 2},
    {id = 10549, chance = 12850},
    {id = 8748, chance = 11360},
    {id = 18304, chance = 9940, maxCount = 10},
    {id = 18416, chance = 6960},
    {id = 18419, chance = 6810},
    {id = 7454, chance = 3340},
    {id = 2213, chance = 2840},
    {id = 2197, chance = 2270},
    {id = 7437, chance = 1490},
    {id = 7452, chance = 1490},
    {id = 2454, chance = 920},
    {id = 2445, chance = 850},
    {id = 2393, chance = 570}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -272},
    {name = "earth", interval = 2000, chance = 15, minDamage = -230, maxDamage = -460, range = 7},
    {name = "physical", interval = 2000, chance = 15, maxDamage = -650, range = 7},
    {name = "lifedrain", interval = 2000, chance = 15, minDamage = -150, maxDamage = -260, length = 5}
})

monster:register()
