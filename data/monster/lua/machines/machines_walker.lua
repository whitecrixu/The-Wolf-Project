-- Walker
-- Converted from XML

local monster = Game.createMonsterType("Walker")
if not monster then return end

monster:name("Walker")
monster:nameDescription("a walker")
monster:health(3000)
monster:maxHealth(3000)
monster:experience(2200)
monster:speed(300)
monster:race(RACE_ENERGY)
monster:corpseId(23343)
monster:outfit({lookType = 605})
monster:defense(45)
monster:armor(40)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = 35},
    {type = COMBAT_PHYSICALDAMAGE, percent = 10},
    {type = COMBAT_DEATHDAMAGE, percent = 10},
    {type = COMBAT_ICEDAMAGE, percent = 5},
    {type = COMBAT_EARTHDAMAGE, percent = 50},
    {type = COMBAT_HOLYDAMAGE, percent = 40}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {type = COMBAT_LIFEDRAIN, combat = true}
})

-- Voices
monster:voices({
    {text = "*zzzt, zzzt*", yell = false}
})

-- Loot
monster:loot({
    {id = 23569, chance = 3548},
    {id = 23541, chance = 1490},
    {id = 2148, chance = 100000, maxCount = 200},
    {id = 2152, chance = 51610, maxCount = 3},
    {id = 9970, chance = 16130, maxCount = 3},
    {id = 2149, chance = 6450, maxCount = 2},
    {id = 8472, chance = 3230},
    {id = 7591, chance = 3230},
    {id = 7590, chance = 2300},
    {id = 23540, chance = 1780},
    {id = 2645, chance = 450}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -120},
    {name = "walker skill reducer", interval = 2000, chance = 21},
    {name = "fire", interval = 2000, chance = 17, minDamage = -125, maxDamage = -245, length = 8}
})

monster:register()
