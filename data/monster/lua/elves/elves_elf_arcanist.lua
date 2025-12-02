-- Elf Arcanist
-- Converted from XML

local monster = Game.createMonsterType("Elf Arcanist")
if not monster then return end

monster:name("Elf Arcanist")
monster:nameDescription("a elf arcanist")
monster:health(220)
monster:maxHealth(220)
monster:experience(175)
monster:speed(170)
monster:race(RACE_BLOOD)
monster:corpseId(6011)
monster:outfit({lookType = 63})
monster:defense(15)
monster:armor(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = 50},
    {type = COMBAT_ENERGYDAMAGE, percent = 20},
    {type = COMBAT_DEATHDAMAGE, percent = 20},
    {type = COMBAT_HOLYDAMAGE, percent = -10}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Feel my wrath!", yell = false},
    {text = "For the Daughter of the Stars!", yell = false},
    {text = "I'll bring balance upon you!", yell = false},
    {text = "Tha'shi Cenath!", yell = false},
    {text = "Vihil Ealuel!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 37000, maxCount = 47},
    {id = 2544, chance = 6000, maxCount = 3},
    {id = 1949, chance = 31000},
    {id = 2260, chance = 18000},
    {id = 2642, chance = 950},
    {id = 2682, chance = 22000},
    {id = 2689, chance = 14000},
    {id = 2652, chance = 7000},
    {id = 12421, chance = 7710},
    {id = 2600, chance = 1000},
    {id = 2802, chance = 5000},
    {id = 2047, chance = 2100},
    {id = 2198, chance = 1999},
    {id = 5922, chance = 2100},
    {id = 7589, chance = 3000},
    {id = 7618, chance = 4000},
    {id = 2189, chance = 1160},
    {id = 2747, chance = 880},
    {id = 2177, chance = 970},
    {id = 2154, chance = 50},
    {id = 10552, chance = 10000}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -45},
    {name = "physical", interval = 2000, chance = 10, maxDamage = -70, range = 7},
    {name = "energy", interval = 2000, chance = 10, minDamage = -30, maxDamage = -50, range = 7},
    {name = "death", interval = 2000, chance = 10, minDamage = -70, maxDamage = -85, range = 7}
})

monster:register()
