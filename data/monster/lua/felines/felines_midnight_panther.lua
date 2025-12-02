-- Midnight Panther
-- Converted from XML

local monster = Game.createMonsterType("Midnight Panther")
if not monster then return end

monster:name("Midnight Panther")
monster:nameDescription("a midnight panther")
monster:health(1200)
monster:maxHealth(1200)
monster:experience(900)
monster:speed(250)
monster:race(RACE_BLOOD)
monster:corpseId(13327)
monster:outfit({lookType = 385})
monster:defense(30)
monster:armor(30)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_DEATHDAMAGE, percent = -1},
    {type = COMBAT_FIREDAMAGE, percent = 1}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_ENERGY, immunity = true}
})

-- Loot
monster:loot({
    {id = 2148, chance = 10000, maxCount = 57},
    {id = 2666, chance = 25000, maxCount = 4},
    {id = 13026, chance = 12500},
    {id = 2168, chance = 12500},
    {id = 13027, chance = 100000}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 1500, chance = 100, minDamage = 0, maxDamage = -76},
    {name = "energy", interval = 2000, chance = 15, minDamage = -75, maxDamage = -215, range = 7}
})

monster:register()
