-- Centipede
-- Converted from XML

local monster = Game.createMonsterType("Centipede")
if not monster then return end

monster:name("Centipede")
monster:nameDescription("a centipede")
monster:health(70)
monster:maxHealth(70)
monster:experience(34)
monster:speed(165)
monster:race(RACE_VENOM)
monster:manaCost(335)
monster:corpseId(6050)
monster:outfit({lookType = 124})
monster:defense(10)
monster:armor(10)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isSummonable(true)
monster:isIllusionable(true)
monster:pushable(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ICEDAMAGE, percent = 20},
    {type = COMBAT_ENERGYDAMAGE, percent = 10},
    {type = COMBAT_FIREDAMAGE, percent = -15}
})

-- Immunities
monster:immunities({
    {type = COMBAT_EARTHDAMAGE, combat = true}
})

-- Loot
monster:loot({
    {id = 2148, chance = 80000, maxCount = 15},
    {id = 11218, chance = 10300}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -50}
})

monster:register()
