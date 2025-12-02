-- Monk
-- Converted from XML

local monster = Game.createMonsterType("Monk")
if not monster then return end

monster:name("Monk")
monster:nameDescription("a monk")
monster:health(240)
monster:maxHealth(240)
monster:experience(200)
monster:speed(200)
monster:race(RACE_BLOOD)
monster:manaCost(600)
monster:corpseId(20559)
monster:outfit({lookType = 57})
monster:defense(30)
monster:armor(30)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isSummonable(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_HOLYDAMAGE, percent = 50},
    {type = COMBAT_DEATHDAMAGE, percent = 50},
    {type = COMBAT_PHYSICALDAMAGE, percent = -10}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Repent Heretic!", yell = false},
    {text = "A prayer to the almighty one!", yell = false},
    {text = "I will punish the sinners!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 15000, maxCount = 18},
    {id = 2689, chance = 20000},
    {id = 1949, chance = 2000},
    {id = 2044, chance = 880},
    {id = 10563, chance = 4930},
    {id = 2015, chance = 820},
    {id = 12448, chance = 2950},
    {id = 12449, chance = 1001},
    {id = 2642, chance = 710},
    {id = 2401, chance = 440},
    {id = 2177, chance = 1002},
    {id = 2193, chance = 2240},
    {id = 2166, chance = 100}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -95}
})

monster:register()
