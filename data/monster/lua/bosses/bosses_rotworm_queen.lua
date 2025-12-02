-- Rotworm Queen
-- Converted from XML

local monster = Game.createMonsterType("Rotworm Queen")
if not monster then return end

monster:name("Rotworm Queen")
monster:nameDescription("a rotworm queen")
monster:health(85)
monster:maxHealth(85)
monster:experience(300)
monster:speed(126)
monster:race(RACE_BLOOD)
monster:corpseId(8947)
monster:outfit({lookType = 295})
monster:defense(15)
monster:armor(10)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:staticAttackChance(90)

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 47},
    {id = 8971, chance = 3333},
    {id = 3976, chance = 20000, maxCount = 45}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = -5, maxDamage = -80}
})

monster:register()
