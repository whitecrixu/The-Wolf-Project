-- Betrayed Wraith
-- Converted from XML

local monster = Game.createMonsterType("Betrayed Wraith")
if not monster then return end

monster:name("Betrayed Wraith")
monster:nameDescription("a betrayed wraith")
monster:health(4200)
monster:maxHealth(4200)
monster:experience(3500)
monster:speed(230)
monster:race(RACE_UNDEAD)
monster:corpseId(6316)
monster:outfit({lookType = 233})
monster:defense(55)
monster:armor(55)
monster:runHealth(420)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ICEDAMAGE, percent = 50},
    {type = COMBAT_HOLYDAMAGE, percent = -20}
})

-- Immunities
monster:immunities({
    {type = COMBAT_DEATHDAMAGE, combat = true},
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_ENERGY, immunity = true},
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {type = COMBAT_LIFEDRAIN, combat = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Rrrah!", yell = false},
    {text = "Gnarr!", yell = false},
    {text = "Tcharrr!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 40000, maxCount = 100},
    {id = 2148, chance = 40000, maxCount = 100},
    {id = 2148, chance = 20000, maxCount = 20},
    {id = 2152, chance = 100000, maxCount = 8},
    {id = 6558, chance = 65250},
    {id = 2547, chance = 50000, maxCount = 5},
    {id = 7368, chance = 10780, maxCount = 5},
    {id = 5944, chance = 10000},
    {id = 7386, chance = 1890},
    {id = 7590, chance = 15000, maxCount = 3},
    {id = 6300, chance = 390},
    {id = 7416, chance = 80},
    {id = 5799, chance = 160},
    {id = 5741, chance = 390},
    {id = 6500, chance = 19430},
    {id = 2145, chance = 11800, maxCount = 4},
    {id = 5022, chance = 8000, maxCount = 2},
    {id = 11233, chance = 18410},
    {id = 8473, chance = 15410},
    {id = 2173, chance = 130}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -180},
    {name = "betrayed wraith skill reducer", interval = 2000, chance = 10},
    {name = "speed", interval = 2000, chance = 20, range = 7}
})

monster:register()
