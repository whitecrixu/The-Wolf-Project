-- Big Boss Trolliver
-- Converted from XML

local monster = Game.createMonsterType("Big Boss Trolliver")
if not monster then return end

monster:name("Big Boss Trolliver")
monster:nameDescription("big boss trolliver")
monster:health(150)
monster:maxHealth(150)
monster:experience(105)
monster:speed(140)
monster:race(RACE_BLOOD)
monster:corpseId(7926)
monster:outfit({lookType = 281})
monster:defense(12)
monster:armor(10)
monster:runHealth(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isConvinceable(true)
monster:isIllusionable(true)
monster:pushable(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 22},
    {type = COMBAT_HOLYDAMAGE, percent = 11},
    {type = COMBAT_EARTHDAMAGE, percent = -3},
    {type = COMBAT_DEATHDAMAGE, percent = -4}
})

-- Loot
monster:loot({
    {id = 2148, chance = 6000, maxCount = 57},
    {id = 2666, chance = 1500, maxCount = 3},
    {id = 2389, chance = 2000, maxCount = 2},
    {id = 2448, chance = 5000}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -75}
})

monster:register()
