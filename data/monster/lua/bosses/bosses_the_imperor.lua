-- The Imperor
-- Converted from XML

local monster = Game.createMonsterType("The Imperor")
if not monster then return end

monster:name("The Imperor")
monster:nameDescription("the imperor")
monster:health(15000)
monster:maxHealth(15000)
monster:experience(8000)
monster:speed(330)
monster:race(RACE_FIRE)
monster:corpseId(8635)
monster:outfit({lookType = 237})
monster:defense(15)
monster:armor(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ICEDAMAGE, percent = -20},
    {type = COMBAT_HOLYDAMAGE, percent = -20},
    {type = COMBAT_DEATHDAMAGE, percent = 20}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
    {type = COMBAT_LIFEDRAIN, combat = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Muahaha!", yell = false},
    {text = "He he he!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 79},
    {id = 2050, chance = 15000},
    {id = 6558, chance = 2222},
    {id = 2260, chance = 18000},
    {id = 6534, chance = 100000},
    {id = 6300, chance = 999},
    {id = 2465, chance = 6577},
    {id = 2548, chance = 20000},
    {id = 6529, chance = 5000, maxCount = 5},
    {id = 2465, chance = 6577},
    {id = 2185, chance = 833},
    {id = 2464, chance = 7887},
    {id = 5944, chance = 5666},
    {id = 7899, chance = 2000},
    {id = 7900, chance = 2000},
    {id = 7891, chance = 2000},
    {id = 6500, chance = 7777},
    {id = 2150, chance = 8888},
    {id = 2165, chance = 4555}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -220},
    {name = "fire", interval = 1000, chance = 13, minDamage = -50, maxDamage = -800},
    {name = "fire", interval = 2000, chance = 20, minDamage = -50, maxDamage = -800, range = 7, radius = 6},
    {name = "fire", interval = 2000, chance = 30, minDamage = -90, maxDamage = -350, length = 4, spread = 2}
})

monster:register()
