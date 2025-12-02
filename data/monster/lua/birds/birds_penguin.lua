-- Penguin
-- Converted from XML

local monster = Game.createMonsterType("Penguin")
if not monster then return end

monster:name("Penguin")
monster:nameDescription("penguin")
monster:health(33)
monster:maxHealth(33)
monster:experience(1)
monster:speed(180)
monster:race(RACE_BLOOD)
monster:manaCost(300)
monster:corpseId(7334)
monster:outfit({lookType = 250})
monster:defense(5)
monster:armor(5)
monster:runHealth(3)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isSummonable(true)
monster:isConvinceable(true)
monster:isIllusionable(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ICEDAMAGE, percent = 5},
    {type = COMBAT_ENERGYDAMAGE, percent = -5}
})

-- Loot
monster:loot({
    {id = 2667, chance = 7500, maxCount = 2},
    {id = 7159, chance = 140},
    {id = 7158, chance = 60}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -13}
})

monster:register()
