-- Gozzler
-- Converted from XML

local monster = Game.createMonsterType("Gozzler")
if not monster then return end

monster:name("Gozzler")
monster:nameDescription("a gozzler")
monster:health(240)
monster:maxHealth(240)
monster:experience(180)
monster:speed(190)
monster:race(RACE_UNDEAD)
monster:manaCost(800)
monster:corpseId(9938)
monster:outfit({lookType = 313})
monster:defense(15)
monster:armor(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isSummonable(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_DEATHDAMAGE, percent = 50},
    {type = COMBAT_HOLYDAMAGE, percent = 50},
    {type = COMBAT_PHYSICALDAMAGE, percent = -5}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Huhuhuhuuu!", yell = false},
    {text = "Let the fun begin!", yell = false},
    {text = "Yihahaha!", yell = false},
    {text = "I'll bite you! Nyehehehehe!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 52500, maxCount = 70},
    {id = 2378, chance = 3100},
    {id = 2015, chance = 8750},
    {id = 2423, chance = 900},
    {id = 2394, chance = 5000},
    {id = 2510, chance = 10000},
    {id = 2385, chance = 8250},
    {id = 2409, chance = 250},
    {id = 2213, chance = 190},
    {id = 2146, chance = 360}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -85},
    {name = "lifedrain", interval = 2000, chance = 15, minDamage = -32, maxDamage = -135}
})

monster:register()
