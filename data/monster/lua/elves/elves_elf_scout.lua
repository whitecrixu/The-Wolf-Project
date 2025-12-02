-- Elf Scout
-- Converted from XML

local monster = Game.createMonsterType("Elf Scout")
if not monster then return end

monster:name("Elf Scout")
monster:nameDescription("a elf scout")
monster:health(160)
monster:maxHealth(160)
monster:experience(75)
monster:speed(170)
monster:race(RACE_BLOOD)
monster:manaCost(360)
monster:corpseId(6012)
monster:outfit({lookType = 64})
monster:defense(10)
monster:armor(10)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isSummonable(true)
monster:isConvinceable(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_HOLYDAMAGE, percent = 20},
    {type = COMBAT_DEATHDAMAGE, percent = -1}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Tha'shi Ab'Dendriel!", yell = false},
    {text = "Feel the sting of my arrows!", yell = false},
    {text = "Thy blood will quench the soil's thirst!", yell = false},
    {text = "Evicor guide my arrow.", yell = false},
    {text = "Your existence will end here!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 75000, maxCount = 25},
    {id = 2544, chance = 30710, maxCount = 12},
    {id = 2545, chance = 15400, maxCount = 4},
    {id = 2681, chance = 17750},
    {id = 2031, chance = 1350},
    {id = 12420, chance = 9750},
    {id = 2642, chance = 1180},
    {id = 10552, chance = 5200},
    {id = 2456, chance = 4000},
    {id = 5921, chance = 1130},
    {id = 7438, chance = 140}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -40},
    {name = "physical", interval = 2000, chance = 15, maxDamage = -80, range = 7}
})

monster:register()
