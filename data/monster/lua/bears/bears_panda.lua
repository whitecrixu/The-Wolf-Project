-- Panda
-- Converted from XML

local monster = Game.createMonsterType("Panda")
if not monster then return end

monster:name("Panda")
monster:nameDescription("a panda")
monster:health(80)
monster:maxHealth(80)
monster:experience(23)
monster:speed(150)
monster:race(RACE_BLOOD)
monster:manaCost(300)
monster:corpseId(6049)
monster:outfit({lookType = 123})
monster:defense(10)
monster:armor(10)
monster:runHealth(8)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isSummonable(true)
monster:isConvinceable(true)
monster:isIllusionable(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = -10}
})

-- Immunities
monster:immunities({
    {type = COMBAT_EARTHDAMAGE, combat = true}
})

-- Voices
monster:voices({
    {text = "Grrrr", yell = false},
    {text = "Groar", yell = false}
})

-- Loot
monster:loot({
    {id = 2666, chance = 70500, maxCount = 4},
    {id = 2671, chance = 39000, maxCount = 2},
    {id = 12401, chance = 10000}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -30}
})

monster:register()
