-- Barbarian Skullhunter
-- Converted from XML

local monster = Game.createMonsterType("Barbarian Skullhunter")
if not monster then return end

monster:name("Barbarian Skullhunter")
monster:nameDescription("a barbarian skullhunter")
monster:health(135)
monster:maxHealth(135)
monster:experience(85)
monster:speed(220)
monster:race(RACE_BLOOD)
monster:manaCost(450)
monster:corpseId(20347)
monster:outfit({lookType = 254, lookBody = 77, lookLegs = 77, lookFeet = 114})
monster:defense(15)
monster:armor(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isConvinceable(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ICEDAMAGE, percent = 50},
    {type = COMBAT_HOLYDAMAGE, percent = 10},
    {type = COMBAT_ENERGYDAMAGE, percent = 20},
    {type = COMBAT_PHYSICALDAMAGE, percent = 5},
    {type = COMBAT_EARTHDAMAGE, percent = -10},
    {type = COMBAT_DEATHDAMAGE, percent = -1}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true}
})

-- Voices
monster:voices({
    {text = "You will become my trophy.", yell = false},
    {text = "Fight harder, coward.", yell = false},
    {text = "Show that you are a worthy opponent.", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 60000, maxCount = 30},
    {id = 2050, chance = 60500},
    {id = 2460, chance = 19000},
    {id = 2403, chance = 15250},
    {id = 2473, chance = 8000},
    {id = 2483, chance = 3850},
    {id = 2229, chance = 3000},
    {id = 7449, chance = 90},
    {id = 7618, chance = 930},
    {id = 5913, chance = 500},
    {id = 2168, chance = 250},
    {id = 7462, chance = 100},
    {id = 7457, chance = 120}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -60}
})

monster:register()
