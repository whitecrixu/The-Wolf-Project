-- Dipthrah
-- Converted from XML

local monster = Game.createMonsterType("Dipthrah")
if not monster then return end

monster:name("Dipthrah")
monster:nameDescription("a dipthrah")
monster:health(4200)
monster:maxHealth(4200)
monster:experience(2900)
monster:speed(320)
monster:race(RACE_UNDEAD)
monster:corpseId(6031)
monster:outfit({lookType = 87})
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
    {type = COMBAT_ICEDAMAGE, percent = 30}
})

-- Immunities
monster:immunities({
    {type = COMBAT_PHYSICALDAMAGE, combat = true},
    {type = COMBAT_DEATHDAMAGE, combat = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Come closer to learn the final lesson.", yell = false},
    {text = "You can't escape death forever.", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 80},
    {id = 2148, chance = 50000, maxCount = 80},
    {id = 2146, chance = 7000, maxCount = 3},
    {id = 7590, chance = 7000},
    {id = 2167, chance = 7000},
    {id = 2178, chance = 1500},
    {id = 2158, chance = 1500},
    {id = 2193, chance = 500},
    {id = 2436, chance = 500},
    {id = 2446, chance = 300},
    {id = 2354, chance = 100000}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -120},
    {name = "lifedrain", interval = 4000, chance = 20, minDamage = -100, maxDamage = -800},
    {name = "manadrain", interval = 2000, chance = 15, minDamage = -100, maxDamage = -500, range = 7},
    {name = "speed", interval = 1000, chance = 15, range = 7},
    {name = "drunk", interval = 1000, chance = 12, radius = 7},
    {name = "melee", interval = 3000, chance = 34, minDamage = -50, maxDamage = -600}
})

monster:register()
