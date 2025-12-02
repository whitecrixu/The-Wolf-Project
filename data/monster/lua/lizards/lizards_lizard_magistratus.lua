-- Lizard Magistratus
-- Converted from XML

local monster = Game.createMonsterType("Lizard Magistratus")
if not monster then return end

monster:name("Lizard Magistratus")
monster:nameDescription("a lizard magistratus")
monster:health(8000)
monster:maxHealth(8000)
monster:experience(2000)
monster:speed(200)
monster:race(RACE_BLOOD)
monster:corpseId(6041)
monster:outfit({lookType = 115})
monster:defense(15)
monster:armor(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:pushable(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = 80}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Shhhhhhhh", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 77230, maxCount = 50},
    {id = 2152, chance = 13400, maxCount = 19},
    {id = 7590, chance = 4480},
    {id = 2147, chance = 8970, maxCount = 5},
    {id = 7589, chance = 6280},
    {id = 5881, chance = 450},
    {id = 5876, chance = 220}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -60},
    {name = "lizard magistratus curse", interval = 2000, chance = 10, range = 5}
})

monster:register()
