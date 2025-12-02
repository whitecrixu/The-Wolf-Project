-- Dragon Hatchling
-- Converted from XML

local monster = Game.createMonsterType("Dragon Hatchling")
if not monster then return end

monster:name("Dragon Hatchling")
monster:nameDescription("a dragon hatchling")
monster:health(380)
monster:maxHealth(380)
monster:experience(185)
monster:speed(170)
monster:race(RACE_BLOOD)
monster:corpseId(7621)
monster:outfit({lookType = 271})
monster:defense(10)
monster:armor(10)
monster:runHealth(38)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_EARTHDAMAGE, percent = 75},
    {type = COMBAT_ICEDAMAGE, percent = -10},
    {type = COMBAT_ENERGYDAMAGE, percent = -5}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_FIRE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Fchu?", yell = false},
    {text = "Rooawwrr", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 67500, maxCount = 55},
    {id = 2672, chance = 61000},
    {id = 7618, chance = 400},
    {id = 12413, chance = 4300}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -65},
    {name = "fire", interval = 2000, chance = 10, minDamage = -60, maxDamage = -90, length = 5, spread = 2},
    {name = "fire", interval = 2000, chance = 15, minDamage = -30, maxDamage = -55, range = 7, radius = 4}
})

monster:register()
