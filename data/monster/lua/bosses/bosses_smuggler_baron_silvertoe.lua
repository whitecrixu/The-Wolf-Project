-- Smuggler Baron Silvertoe
-- Converted from XML

local monster = Game.createMonsterType("Smuggler Baron Silvertoe")
if not monster then return end

monster:name("Smuggler Baron Silvertoe")
monster:nameDescription("Smuggler Baron Silvertoe")
monster:health(280)
monster:maxHealth(280)
monster:experience(170)
monster:speed(200)
monster:race(RACE_BLOOD)
monster:corpseId(20506)
monster:outfit({lookType = 134, lookHead = 38, lookLegs = 94, lookFeet = 95})
monster:defense(15)
monster:armor(15)
monster:runHealth(28)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = -5},
    {type = COMBAT_DEATHDAMAGE, percent = -5}
})

-- Voices
monster:voices({
    {text = "I will make your death look like an accident!", yell = false},
    {text = "You should not have interferred with my bussiness!", yell = false},
    {text = "Bribes are expensive, murder is cheap!", yell = false},
    {text = "I see some profit in your death!", yell = false},
    {text = "I expect you to die!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 80000, maxCount = 30},
    {id = 2050, chance = 30200, maxCount = 2},
    {id = 2649, chance = 14000},
    {id = 2671, chance = 10000},
    {id = 2406, chance = 10000},
    {id = 2461, chance = 10000},
    {id = 2403, chance = 10000},
    {id = 2376, chance = 5000},
    {id = 8840, chance = 5000, maxCount = 5},
    {id = 2404, chance = 4000},
    {id = 7397, chance = 110}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -50},
    {name = "physical", interval = 2000, chance = 15, maxDamage = -40, range = 7}
})

monster:register()
