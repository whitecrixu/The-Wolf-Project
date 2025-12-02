-- Dark Apprentice
-- Converted from XML

local monster = Game.createMonsterType("Dark Apprentice")
if not monster then return end

monster:name("Dark Apprentice")
monster:nameDescription("a dark apprentice")
monster:health(225)
monster:maxHealth(225)
monster:experience(100)
monster:speed(190)
monster:race(RACE_BLOOD)
monster:corpseId(20363)
monster:outfit({lookType = 133, lookHead = 78, lookBody = 57, lookLegs = 95, lookFeet = 115, lookAddons = 1})
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
    {type = COMBAT_DEATHDAMAGE, percent = -5}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Outch!", yell = false},
    {text = "Oops, I did it again.", yell = false},
    {text = "From the spirits that I called Sir, deliver me!", yell = false},
    {text = "I must dispose of my masters enemies!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 7500, maxCount = 45},
    {id = 2260, chance = 8125, maxCount = 3},
    {id = 7620, chance = 2980},
    {id = 6079, chance = 12100},
    {id = 2191, chance = 1980},
    {id = 7618, chance = 2900},
    {id = 2188, chance = 110},
    {id = 13295, chance = 10}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -60},
    {name = "fire", interval = 2000, chance = 10, minDamage = -2, maxDamage = -26, range = 7},
    {name = "energy", interval = 2000, chance = 10, minDamage = -10, maxDamage = -20, range = 7},
    {name = "physical", interval = 2000, chance = 10, maxDamage = -24, range = 7},
    {name = "outfit", interval = 2000, chance = 1, range = 3},
    {name = "outfit", interval = 2000, chance = 1, radius = 4}
})

monster:register()
