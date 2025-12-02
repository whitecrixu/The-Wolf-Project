-- Mahrdis
-- Converted from XML

local monster = Game.createMonsterType("Mahrdis")
if not monster then return end

monster:name("Mahrdis")
monster:nameDescription("a mahrdis")
monster:health(3900)
monster:maxHealth(3900)
monster:experience(3050)
monster:speed(340)
monster:race(RACE_UNDEAD)
monster:corpseId(6025)
monster:outfit({lookType = 90})
monster:defense(30)
monster:armor(20)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 45},
    {type = COMBAT_HOLYDAMAGE, percent = -22},
    {type = COMBAT_ICEDAMAGE, percent = -25}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true},
    {type = COMBAT_DEATHDAMAGE, combat = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Ashes to ashes!", yell = false},
    {text = "Fire, Fire!", yell = false},
    {text = "The eternal flame demands its due!", yell = false},
    {text = "This is why I'm hot.", yell = false},
    {text = "May my flames engulf you!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 80},
    {id = 2148, chance = 50000, maxCount = 70},
    {id = 2148, chance = 50000, maxCount = 64},
    {id = 2147, chance = 7000, maxCount = 3},
    {id = 2168, chance = 1500},
    {id = 7591, chance = 1500},
    {id = 2156, chance = 1500},
    {id = 2432, chance = 750},
    {id = 2141, chance = 500},
    {id = 2539, chance = 300},
    {id = 2353, chance = 100000}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -170},
    {name = "physical", interval = 1600, chance = 7, minDamage = -60, maxDamage = -600},
    {name = "fire", interval = 1000, chance = 7, minDamage = -60, maxDamage = -600, range = 7},
    {name = "speed", interval = 2000, chance = 13, range = 7},
    {name = "fire", interval = 2000, chance = 34, minDamage = -80, maxDamage = -800, radius = 3},
    {name = "firefield", interval = 1000, chance = 12, radius = 4},
    {name = "firecondition", interval = 2000, chance = 13, minDamage = -50, maxDamage = -500, length = 8, spread = 3}
})

monster:register()
