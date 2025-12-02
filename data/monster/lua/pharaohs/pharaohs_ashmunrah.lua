-- Ashmunrah
-- Converted from XML

local monster = Game.createMonsterType("Ashmunrah")
if not monster then return end

monster:name("Ashmunrah")
monster:nameDescription("an ashmunrah")
monster:health(5000)
monster:maxHealth(5000)
monster:experience(3100)
monster:speed(320)
monster:race(RACE_UNDEAD)
monster:corpseId(6031)
monster:outfit({lookType = 87})
monster:defense(30)
monster:armor(25)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_HOLYDAMAGE, percent = -17}
})

-- Immunities
monster:immunities({
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {type = COMBAT_DEATHDAMAGE, combat = true},
    {type = COMBAT_LIFEDRAIN, combat = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "No mortal or undead will steal my secrets!", yell = false},
    {text = "Ahhhh all those long years.", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 80},
    {id = 2148, chance = 50000, maxCount = 60},
    {id = 2134, chance = 7000},
    {id = 7590, chance = 1500},
    {id = 2164, chance = 1000},
    {id = 2487, chance = 80000},
    {id = 2140, chance = 400}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -290},
    {name = "lifedrain", interval = 3000, chance = 7, minDamage = -100, maxDamage = -700},
    {name = "poison", interval = 2000, chance = 12, minDamage = -100, maxDamage = -500, range = 7},
    {name = "physical", interval = 3000, chance = 12, minDamage = -120, maxDamage = -750, range = 7},
    {name = "speed", interval = 3000, chance = 25, range = 7},
    {name = "lifedrain", interval = 2000, chance = 18, minDamage = -50, maxDamage = -550, length = 8, spread = 3}
})

monster:register()
