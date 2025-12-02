-- Lord of the Elements
-- Converted from XML

local monster = Game.createMonsterType("Lord of the Elements")
if not monster then return end

monster:name("Lord of the Elements")
monster:nameDescription("lord of the elements")
monster:health(8000)
monster:maxHealth(8000)
monster:experience(8000)
monster:speed(370)
monster:race(RACE_UNDEAD)
monster:corpseId(9009)
monster:outfit({lookType = 290})
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
    {type = COMBAT_PHYSICALDAMAGE, percent = 1},
    {type = COMBAT_FIREDAMAGE, percent = 30},
    {type = COMBAT_ENERGYDAMAGE, percent = 30},
    {type = COMBAT_ICEDAMAGE, percent = 30},
    {type = COMBAT_EARTHDAMAGE, percent = 45}
})

-- Immunities
monster:immunities({
    {type = COMBAT_HOLYDAMAGE, combat = true},
    {type = COMBAT_DEATHDAMAGE, combat = true},
    {condition = CONDITION_DROWN, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "WHO DARES CALLING ME?", yell = true},
    {text = "I'LL FREEZE YOU THEN I CRUSH YOU!", yell = true}
})

-- Loot
monster:loot({
    {id = 2152, chance = 50000, maxCount = 9},
    {id = 9971, chance = 25000},
    {id = 2149, chance = 11111, maxCount = 4},
    {id = 2150, chance = 11111, maxCount = 3},
    {id = 2147, chance = 11111, maxCount = 4},
    {id = 2146, chance = 7142, maxCount = 4},
    {id = 8882, chance = 2063}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -225}
})

monster:register()
