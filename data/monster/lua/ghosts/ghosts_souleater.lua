-- Souleater
-- Converted from XML

local monster = Game.createMonsterType("Souleater")
if not monster then return end

monster:name("Souleater")
monster:nameDescription("a souleater")
monster:health(1100)
monster:maxHealth(1100)
monster:experience(1300)
monster:speed(200)
monster:race(RACE_UNDEAD)
monster:corpseId(12631)
monster:outfit({lookType = 355})
monster:defense(30)
monster:armor(30)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_HOLYDAMAGE, percent = -10},
    {type = COMBAT_ICEDAMAGE, percent = 50},
    {type = COMBAT_FIREDAMAGE, percent = -10},
    {type = COMBAT_ENERGYDAMAGE, percent = -10},
    {type = COMBAT_PHYSICALDAMAGE, percent = 70}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {type = COMBAT_DEATHDAMAGE, combat = true}
})

-- Voices
monster:voices({
    {text = "Life is such a fickle thing!", yell = false},
    {text = "I will devour your soul.", yell = false},
    {text = "Souuuls!", yell = false},
    {text = "I will feed on you.", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 33400, maxCount = 100},
    {id = 2148, chance = 33400, maxCount = 100},
    {id = 2152, chance = 49610, maxCount = 6},
    {id = 2189, chance = 910},
    {id = 12637, chance = 2000},
    {id = 7590, chance = 8000},
    {id = 8473, chance = 9400},
    {id = 12636, chance = 15250},
    {id = 2185, chance = 980},
    {id = 12635, chance = 20},
    {id = 6300, chance = 300},
    {id = 5884, chance = 140}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -120},
    {name = "icicle", interval = 2000, chance = 20, minDamage = -50, maxDamage = -100, range = 7},
    {name = "souleater drown", interval = 2000, chance = 10},
    {name = "death", interval = 2000, chance = 10, minDamage = -100, maxDamage = -200, length = 4, spread = 3},
    {name = "lifedrain", interval = 2000, chance = 25, minDamage = -30, maxDamage = -60, radius = 4}
})

monster:register()
