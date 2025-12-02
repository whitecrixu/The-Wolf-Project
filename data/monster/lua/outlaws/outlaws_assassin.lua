-- Assassin
-- Converted from XML

local monster = Game.createMonsterType("Assassin")
if not monster then return end

monster:name("Assassin")
monster:nameDescription("an assassin")
monster:health(175)
monster:maxHealth(175)
monster:experience(105)
monster:speed(215)
monster:race(RACE_BLOOD)
monster:manaCost(450)
monster:corpseId(20327)
monster:outfit({lookType = 152, lookHead = 114, lookBody = 95, lookLegs = 95, lookFeet = 95, lookAddons = 3})
monster:defense(15)
monster:armor(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isConvinceable(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = -5},
    {type = COMBAT_DEATHDAMAGE, percent = -5}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Die!", yell = false},
    {text = "Feel the hand of death!", yell = false},
    {text = "You are on my deathlist!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 83210, maxCount = 50},
    {id = 2050, chance = 29980, maxCount = 2},
    {id = 2148, chance = 7250, maxCount = 14},
    {id = 7366, chance = 4200, maxCount = 7},
    {id = 2403, chance = 9500},
    {id = 2404, chance = 4000},
    {id = 2457, chance = 3230},
    {id = 2509, chance = 970},
    {id = 2510, chance = 1900},
    {id = 3968, chance = 480},
    {id = 2513, chance = 1600},
    {id = 2145, chance = 220},
    {id = 3969, chance = 230}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -90},
    {name = "physical", interval = 2000, chance = 15, maxDamage = -40, range = 7},
    {name = "poisoncondition", interval = 2000, chance = 10, minDamage = -120, maxDamage = -160, range = 7}
})

monster:register()
