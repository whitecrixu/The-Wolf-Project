-- Cobra
-- Converted from XML

local monster = Game.createMonsterType("Cobra")
if not monster then return end

monster:name("Cobra")
monster:nameDescription("a cobra")
monster:health(65)
monster:maxHealth(65)
monster:experience(30)
monster:speed(170)
monster:race(RACE_BLOOD)
monster:manaCost(275)
monster:corpseId(3007)
monster:outfit({lookType = 81})
monster:defense(5)
monster:armor(5)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isSummonable(true)
monster:isConvinceable(true)
monster:isIllusionable(true)
monster:pushable(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = -10}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_DRUNK, immunity = true},
    {type = COMBAT_EARTHDAMAGE, combat = true}
})

-- Voices
monster:voices({
    {text = "Zzzzzz", yell = false},
    {text = "Fsssss", yell = false}
})

-- Loot
monster:loot({
    {id = 10551, chance = 5000}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = 0},
    {name = "poisoncondition", interval = 2000, chance = 15, minDamage = -20, maxDamage = -40, range = 7}
})

monster:register()
