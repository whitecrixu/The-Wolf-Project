-- Lizard Sentinel
-- Converted from XML

local monster = Game.createMonsterType("Lizard Sentinel")
if not monster then return end

monster:name("Lizard Sentinel")
monster:nameDescription("a lizard sentinel")
monster:health(265)
monster:maxHealth(265)
monster:experience(110)
monster:speed(180)
monster:race(RACE_BLOOD)
monster:corpseId(6040)
monster:outfit({lookType = 114})
monster:defense(15)
monster:armor(15)
monster:runHealth(26)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isConvinceable(true)
monster:isIllusionable(true)
monster:pushable(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 10},
    {type = COMBAT_ICEDAMAGE, percent = 20},
    {type = COMBAT_FIREDAMAGE, percent = -10}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true},
    {type = COMBAT_EARTHDAMAGE, combat = true}
})

-- Voices
monster:voices({
    {text = "Tssss!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 89000, maxCount = 80},
    {id = 2389, chance = 8750, maxCount = 3},
    {id = 2464, chance = 8560},
    {id = 2483, chance = 7730},
    {id = 3965, chance = 4700},
    {id = 5881, chance = 960},
    {id = 2425, chance = 1120},
    {id = 3974, chance = 320},
    {id = 5876, chance = 990},
    {id = 7618, chance = 590},
    {id = 2381, chance = 510},
    {id = 2145, chance = 190}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -50},
    {name = "physical", interval = 2000, chance = 30, maxDamage = -70, range = 7}
})

monster:register()
