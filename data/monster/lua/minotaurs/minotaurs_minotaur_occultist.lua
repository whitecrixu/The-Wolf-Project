-- Minotaur Occultist
-- Converted from XML

local monster = Game.createMonsterType("Minotaur Occultist")
if not monster then return end

monster:name("Minotaur Occultist")
monster:nameDescription("a minotaur occultist")
monster:health(125)
monster:maxHealth(125)
monster:experience(100)
monster:speed(170)
monster:race(RACE_BLOOD)
monster:corpseId(5981)
monster:outfit({lookType = 23})
monster:defense(10)
monster:armor(10)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 21},
    {id = 2684, chance = 35000, maxCount = 4},
    {id = 20104, chance = 12000},
    {id = 12428, chance = 10000},
    {id = 2649, chance = 9000},
    {id = 7620, chance = 3500},
    {id = 2050, chance = 3500},
    {id = 2461, chance = 1800},
    {id = 12429, chance = 1800}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -10},
    {name = "energy", interval = 2000, chance = 15, maxDamage = -20, range = 7},
    {name = "fire", interval = 2000, chance = 15, maxDamage = -20, range = 7},
    {name = "energyfield", interval = 2000, chance = 10, range = 7}
})

monster:register()
