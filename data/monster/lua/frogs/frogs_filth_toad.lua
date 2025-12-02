-- Filth Toad
-- Converted from XML

local monster = Game.createMonsterType("Filth Toad")
if not monster then return end

monster:name("Filth Toad")
monster:nameDescription("a filth toad")
monster:health(185)
monster:maxHealth(185)
monster:experience(90)
monster:speed(210)
monster:race(RACE_BLOOD)
monster:corpseId(6077)
monster:outfit({lookType = 222})
monster:defense(15)
monster:armor(15)
monster:runHealth(18)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:pushable(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_EARTHDAMAGE, percent = 20},
    {type = COMBAT_ICEDAMAGE, percent = 20},
    {type = COMBAT_FIREDAMAGE, percent = -10}
})

-- Voices
monster:voices({
    {text = "Ribbit, ribbit!", yell = false},
    {text = "Ribbit!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 75000, maxCount = 21},
    {id = 2667, chance = 22000},
    {id = 10557, chance = 3000},
    {id = 2398, chance = 2000},
    {id = 2377, chance = 500}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -40},
    {name = "physical", interval = 2000, chance = 20, minDamage = -8, maxDamage = -17, range = 7}
})

monster:register()
