-- Demodras
-- Converted from XML

local monster = Game.createMonsterType("Demodras")
if not monster then return end

monster:name("Demodras")
monster:nameDescription("demodras")
monster:health(4500)
monster:maxHealth(4500)
monster:experience(4000)
monster:speed(230)
monster:race(RACE_BLOOD)
monster:corpseId(5984)
monster:outfit({lookType = 204})
monster:defense(25)
monster:armor(35)
monster:runHealth(450)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true},
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "I WILL SET THE WORLD IN FIRE!", yell = true},
    {text = "I WILL PROTECT MY BROOD!", yell = true}
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 100},
    {id = 2672, chance = 20000, maxCount = 2},
    {id = 2033, chance = 1818},
    {id = 1976, chance = 3333},
    {id = 2413, chance = 5000},
    {id = 2498, chance = 588},
    {id = 2492, chance = 333},
    {id = 2547, chance = 2222, maxCount = 10},
    {id = 2546, chance = 2222, maxCount = 5},
    {id = 2796, chance = 6666},
    {id = 3976, chance = 50000, maxCount = 10},
    {id = 2148, chance = 100000, maxCount = 100},
    {id = 2149, chance = 833, maxCount = 2},
    {id = 2392, chance = 1428},
    {id = 2146, chance = 2222, maxCount = 2},
    {id = 2528, chance = 1333},
    {id = 5948, chance = 5000},
    {id = 5882, chance = 5000},
    {id = 5919, chance = 100000}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = -160, maxDamage = -600},
    {name = "fire", interval = 3000, chance = 20, minDamage = -250, maxDamage = -350, range = 7, radius = 4},
    {name = "firefield", interval = 1000, chance = 10, range = 7, radius = 6},
    {name = "fire", interval = 4000, chance = 20, minDamage = -250, maxDamage = -550, length = 8, spread = 3}
})

monster:register()
