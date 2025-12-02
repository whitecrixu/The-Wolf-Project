-- Frost Dragon
-- Converted from XML

local monster = Game.createMonsterType("Frost Dragon")
if not monster then return end

monster:name("Frost Dragon")
monster:nameDescription("a frost dragon")
monster:health(1800)
monster:maxHealth(1800)
monster:experience(2100)
monster:speed(240)
monster:race(RACE_UNDEAD)
monster:corpseId(7091)
monster:outfit({lookType = 248})
monster:defense(45)
monster:armor(45)
monster:runHealth(180)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 10},
    {type = COMBAT_DEATHDAMAGE, percent = 10}
})

-- Immunities
monster:immunities({
    {type = COMBAT_LIFEDRAIN, combat = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_FIRE, immunity = true},
    {type = COMBAT_ICEDAMAGE, combat = true},
    {type = COMBAT_EARTHDAMAGE, combat = true}
})

-- Voices
monster:voices({
    {text = "YOU WILL FREEZE!", yell = true},
    {text = "ZCHHHHH!", yell = true},
    {text = "I am so cool", yell = false},
    {text = "Chill out!.", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 33000, maxCount = 100},
    {id = 2148, chance = 33000, maxCount = 100},
    {id = 2148, chance = 33000, maxCount = 42},
    {id = 2672, chance = 80370, maxCount = 5},
    {id = 2547, chance = 6000, maxCount = 6},
    {id = 2796, chance = 12000},
    {id = 1976, chance = 8500},
    {id = 2146, chance = 5200},
    {id = 7441, chance = 4000},
    {id = 2167, chance = 5000},
    {id = 2033, chance = 3000},
    {id = 7290, chance = 550},
    {id = 2177, chance = 520},
    {id = 2492, chance = 80},
    {id = 2479, chance = 450},
    {id = 2498, chance = 210},
    {id = 2528, chance = 340},
    {id = 7402, chance = 120},
    {id = 2396, chance = 350}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -124},
    {name = "lifedrain", interval = 2000, chance = 10, minDamage = -175, maxDamage = -380, length = 8, spread = 3},
    {name = "speed", interval = 2000, chance = 5, radius = 3},
    {name = "speed", interval = 2000, chance = 15, length = 7, spread = 3},
    {name = "ice", interval = 2000, chance = 5, minDamage = -60, maxDamage = -120, radius = 3},
    {name = "ice", interval = 2000, chance = 10, minDamage = -100, maxDamage = -240, radius = 4},
    {name = "physical", interval = 2000, chance = 5, maxDamage = -220, length = 1},
    {name = "speed", interval = 2000, chance = 20, radius = 4}
})

monster:register()
