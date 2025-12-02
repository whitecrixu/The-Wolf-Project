-- Brutus Bloodbeard
-- Converted from XML

local monster = Game.createMonsterType("Brutus Bloodbeard")
if not monster then return end

monster:name("Brutus Bloodbeard")
monster:nameDescription("Brutus Bloodbeard")
monster:health(1200)
monster:maxHealth(1200)
monster:experience(500)
monster:speed(240)
monster:race(RACE_BLOOD)
monster:corpseId(20478)
monster:outfit({lookType = 98})
monster:defense(50)
monster:armor(35)

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
    {id = 6099, chance = 100000},
    {id = 2148, chance = 100000, maxCount = 40},
    {id = 2476, chance = 1200},
    {id = 2463, chance = 4000},
    {id = 2320, chance = 100000}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = -450, maxDamage = -500}
})

monster:register()
