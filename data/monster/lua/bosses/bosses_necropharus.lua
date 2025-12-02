-- Necropharus
-- Converted from XML

local monster = Game.createMonsterType("Necropharus")
if not monster then return end

monster:name("Necropharus")
monster:nameDescription("necropharus")
monster:health(750)
monster:maxHealth(750)
monster:experience(700)
monster:speed(240)
monster:race(RACE_BLOOD)
monster:corpseId(20574)
monster:outfit({lookType = 209})
monster:defense(25)
monster:armor(25)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Immunities
monster:immunities({
    {condition = CONDITION_POISON, immunity = true},
    {type = COMBAT_LIFEDRAIN, combat = true},
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "You will rise as my servant!", yell = false},
    {text = "Praise to my master Urgith!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 40},
    {id = 2032, chance = 10000},
    {id = 3969, chance = 150},
    {id = 2392, chance = 220},
    {id = 2804, chance = 20000, maxCount = 2},
    {id = 3976, chance = 50000, maxCount = 10},
    {id = 5809, chance = 100000},
    {id = 2186, chance = 500},
    {id = 2483, chance = 8500},
    {id = 2796, chance = 22500},
    {id = 2231, chance = 6000},
    {id = 2230, chance = 30000},
    {id = 2449, chance = 19900},
    {id = 2541, chance = 7500},
    {id = 2412, chance = 10000},
    {id = 2229, chance = 20000, maxCount = 3},
    {id = 2747, chance = 20000},
    {id = 2436, chance = 833},
    {id = 2663, chance = 909},
    {id = 2195, chance = 666},
    {id = 2423, chance = 5000}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -80},
    {name = "lifedrain", interval = 1000, chance = 20, minDamage = -80, maxDamage = -120},
    {name = "poison", interval = 1000, chance = 17, minDamage = -50, maxDamage = -140, range = 7}
})

monster:register()
