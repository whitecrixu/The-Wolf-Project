-- Troll Guard
-- Converted from XML

local monster = Game.createMonsterType("Troll Guard")
if not monster then return end

monster:name("Troll Guard")
monster:nameDescription("a troll guard")
monster:health(60)
monster:maxHealth(60)
monster:experience(25)
monster:speed(180)
monster:race(RACE_BLOOD)
monster:corpseId(7926)
monster:outfit({lookType = 281})
monster:defense(2)
monster:armor(1)
monster:runHealth(6)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:pushable(true)
monster:staticAttackChance(90)

-- Loot
monster:loot({
    {id = 2148, chance = 58000, maxCount = 12},
    {id = 2666, chance = 14000, maxCount = 2},
    {id = 2120, chance = 10000},
    {id = 2448, chance = 3000}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -15}
})

monster:register()
