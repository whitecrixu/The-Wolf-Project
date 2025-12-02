-- Crocodile
-- Converted from XML

local monster = Game.createMonsterType("Crocodile")
if not monster then return end

monster:name("Crocodile")
monster:nameDescription("a crocodile")
monster:health(105)
monster:maxHealth(105)
monster:experience(40)
monster:speed(190)
monster:race(RACE_BLOOD)
monster:manaCost(350)
monster:corpseId(6046)
monster:outfit({lookType = 119})
monster:defense(15)
monster:armor(15)
monster:runHealth(10)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isSummonable(true)
monster:isConvinceable(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_EARTHDAMAGE, percent = 20},
    {type = COMBAT_ICEDAMAGE, percent = 10},
    {type = COMBAT_ENERGYDAMAGE, percent = -5},
    {type = COMBAT_FIREDAMAGE, percent = -10},
    {type = COMBAT_PHYSICALDAMAGE, percent = -5}
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 10},
    {id = 2671, chance = 40000},
    {id = 3982, chance = 100},
    {id = 11196, chance = 20180}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -50}
})

monster:register()
