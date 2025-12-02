-- Wiggler
-- Converted from XML

local monster = Game.createMonsterType("Wiggler")
if not monster then return end

monster:name("Wiggler")
monster:nameDescription("a wiggler")
monster:health(1200)
monster:maxHealth(1200)
monster:experience(900)
monster:speed(220)
monster:race(RACE_VENOM)
monster:corpseId(18483)
monster:outfit({lookType = 510})
monster:defense(15)
monster:armor(15)
monster:runHealth(120)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_DEATHDAMAGE, percent = 10},
    {type = COMBAT_ENERGYDAMAGE, percent = 5},
    {type = COMBAT_FIREDAMAGE, percent = -5}
})

-- Immunities
monster:immunities({
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Zzzrp!", yell = false},
    {text = "Crick! Crick!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 100},
    {id = 18304, chance = 15540, maxCount = 5},
    {id = 18436, chance = 15260, maxCount = 5},
    {id = 2152, chance = 14790},
    {id = 2787, chance = 7142, maxCount = 5},
    {id = 7589, chance = 5250},
    {id = 7588, chance = 4930},
    {id = 18416, chance = 3600},
    {id = 5912, chance = 2080},
    {id = 5914, chance = 2160},
    {id = 18421, chance = 2070},
    {id = 2409, chance = 1360},
    {id = 2529, chance = 1320},
    {id = 2181, chance = 850}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -120},
    {name = "earth", interval = 2000, chance = 10, minDamage = -180, maxDamage = -270, length = 4, spread = 3},
    {name = "poisoncondition", interval = 2000, chance = 10, minDamage = -160, maxDamage = -200, range = 7},
    {name = "speed", interval = 2000, chance = 15, length = 3, spread = 2}
})

monster:register()
