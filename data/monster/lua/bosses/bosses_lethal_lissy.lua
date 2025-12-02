-- Lethal Lissy
-- Converted from XML

local monster = Game.createMonsterType("Lethal Lissy")
if not monster then return end

monster:name("Lethal Lissy")
monster:nameDescription("lethal lissy")
monster:health(1450)
monster:maxHealth(1450)
monster:experience(500)
monster:speed(240)
monster:race(RACE_BLOOD)
monster:corpseId(20438)
monster:outfit({lookType = 155, lookHead = 77, lookLegs = 76, lookFeet = 132, lookAddons = 3})
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
    {id = 6100, chance = 100000},
    {id = 2148, chance = 100000, maxCount = 40},
    {id = 2476, chance = 1200},
    {id = 2387, chance = 1500},
    {id = 2463, chance = 4000},
    {id = 2145, chance = 100000},
    {id = 2320, chance = 100000}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = -150, maxDamage = -250}
})

monster:register()
