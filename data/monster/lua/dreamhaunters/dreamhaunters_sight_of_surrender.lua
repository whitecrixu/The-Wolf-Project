-- Sight of Surrender
-- Converted from XML

local monster = Game.createMonsterType("Sight of Surrender")
if not monster then return end

monster:name("Sight of Surrender")
monster:nameDescription("Sight of Surrender")
monster:health(28000)
monster:maxHealth(28000)
monster:experience(17000)
monster:speed(300)
monster:race(RACE_UNDEAD)
monster:corpseId(22478)
monster:outfit({lookType = 583})
monster:defense(70)
monster:armor(70)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 40},
    {type = COMBAT_DEATHDAMAGE, percent = 10},
    {type = COMBAT_FIREDAMAGE, percent = 35},
    {type = COMBAT_ENERGYDAMAGE, percent = 10},
    {type = COMBAT_ICEDAMAGE, percent = 30},
    {type = COMBAT_EARTHDAMAGE, percent = 10},
    {type = COMBAT_HOLYDAMAGE, percent = -5}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "BOW LOW!", yell = false},
    {text = "FEEL THE TRUE MEANING OF VANQUISH!", yell = false},
    {text = "HAHAHAHA DO YOU WANT TO AMUSE YOUR MASTER?", yell = false},
    {text = "NOW YOU WILL SURRENDER!", yell = false}
})

-- Loot
monster:loot({
    {id = 2152, chance = 100000, maxCount = 20},
    {id = 2164, chance = 8000},
    {id = 2197, chance = 18000},
    {id = 2444, chance = 1380},
    {id = 2445, chance = 5500},
    {id = 2472, chance = 1380},
    {id = 2497, chance = 920},
    {id = 2488, chance = 920},
    {id = 2528, chance = 1380},
    {id = 2645, chance = 920},
    {id = 7421, chance = 920},
    {id = 7422, chance = 920},
    {id = 7590, chance = 78000, maxCount = 5},
    {id = 8472, chance = 72000, maxCount = 5},
    {id = 8473, chance = 30000, maxCount = 5},
    {id = 18413, chance = 23000, maxCount = 3},
    {id = 18414, chance = 32000, maxCount = 3},
    {id = 18415, chance = 21600, maxCount = 3},
    {id = 18416, chance = 30000, maxCount = 5},
    {id = 18417, chance = 30410, maxCount = 5},
    {id = 18418, chance = 40000, maxCount = 5},
    {id = 22396, chance = 1800},
    {id = 22517, chance = 100000},
    {id = 22518, chance = 100000},
    {id = 22542, chance = 460}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -300},
    {name = "energy", interval = 2000, chance = 15, minDamage = -500, maxDamage = -800, length = 8},
    {name = "physical", interval = 2000, chance = 20, maxDamage = -500, radius = 1}
})

monster:register()
