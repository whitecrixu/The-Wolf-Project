-- Diseased Dan
-- Converted from XML

local monster = Game.createMonsterType("Diseased Dan")
if not monster then return end

monster:name("Diseased Dan")
monster:nameDescription("a diseased dan")
monster:health(1300)
monster:maxHealth(1300)
monster:experience(800)
monster:speed(150)
monster:race(RACE_VENOM)
monster:corpseId(8951)
monster:outfit({lookType = 299})
monster:defense(15)
monster:armor(10)
monster:runHealth(130)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = -20},
    {type = COMBAT_ENERGYDAMAGE, percent = -10},
    {type = COMBAT_EARTHDAMAGE, percent = 30},
    {type = COMBAT_ICEDAMAGE, percent = -5},
    {type = COMBAT_HOLYDAMAGE, percent = -5},
    {type = COMBAT_DEATHDAMAGE, percent = 5},
    {type = COMBAT_FIREDAMAGE, percent = 85}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Tchhh!", yell = false},
    {text = "Slurp!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 28000, maxCount = 65},
    {id = 2148, chance = 28000, maxCount = 64},
    {id = 7591, chance = 5500},
    {id = 2647, chance = 2000},
    {id = 8473, chance = 3500},
    {id = 8472, chance = 3500},
    {id = 8872, chance = 1000},
    {id = 8912, chance = 800},
    {id = 8873, chance = 300},
    {id = 8891, chance = 200}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -119},
    {name = "lifedrain", interval = 2000, chance = 100, minDamage = -90, maxDamage = -140},
    {name = "physical", interval = 1000, chance = 40, minDamage = -100, maxDamage = -175, radius = 2},
    {name = "paralyze", interval = 3000, chance = 40}
})

monster:register()
