-- Fernfang
-- Converted from XML

local monster = Game.createMonsterType("Fernfang")
if not monster then return end

monster:name("Fernfang")
monster:nameDescription("Fernfang")
monster:health(400)
monster:maxHealth(400)
monster:experience(400)
monster:speed(240)
monster:race(RACE_BLOOD)
monster:corpseId(20566)
monster:outfit({lookType = 206})
monster:defense(10)
monster:armor(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ICEDAMAGE, percent = 70},
    {type = COMBAT_EARTHDAMAGE, percent = 40}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "You desecrated this place!", yell = false},
    {text = "I will cleanse this isle!", yell = false},
    {text = "Grrrrrrr", yell = false},
    {text = "Yoooohhuuuu!", yell = true}
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 20},
    {id = 1949, chance = 10000},
    {id = 2467, chance = 10000},
    {id = 2642, chance = 6666},
    {id = 3976, chance = 50000, maxCount = 10},
    {id = 2044, chance = 6666},
    {id = 2689, chance = 20000, maxCount = 3},
    {id = 2401, chance = 3333},
    {id = 2166, chance = 1428}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -90},
    {name = "manadrain", interval = 1000, chance = 25, minDamage = -25, maxDamage = -45, range = 7},
    {name = "energy", interval = 1000, chance = 13, minDamage = -70, maxDamage = -90, range = 7},
    {name = "physical", interval = 1000, chance = 10, minDamage = -140, maxDamage = -180, range = 7}
})

monster:register()
