-- Pirate Skeleton
-- Converted from XML

local monster = Game.createMonsterType("Pirate Skeleton")
if not monster then return end

monster:name("Pirate Skeleton")
monster:nameDescription("a pirate skeleton")
monster:health(190)
monster:maxHealth(190)
monster:experience(85)
monster:speed(180)
monster:race(RACE_UNDEAD)
monster:corpseId(6070)
monster:outfit({lookType = 195})
monster:defense(15)
monster:armor(15)
monster:runHealth(19)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_HOLYDAMAGE, percent = -25}
})

-- Immunities
monster:immunities({
    {type = COMBAT_DEATHDAMAGE, combat = true}
})

-- Loot
monster:loot({
    {id = 2148, chance = 48000, maxCount = 25},
    {id = 2231, chance = 5140},
    {id = 2230, chance = 4250},
    {id = 2406, chance = 1003},
    {id = 2376, chance = 550},
    {id = 2449, chance = 960},
    {id = 2229, chance = 4460},
    {id = 10559, chance = 4730}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -60}
})

monster:register()
