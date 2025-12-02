-- Sharptooth
-- Converted from XML

local monster = Game.createMonsterType("Sharptooth")
if not monster then return end

monster:name("Sharptooth")
monster:nameDescription("a sharptooth")
monster:health(2500)
monster:maxHealth(2500)
monster:experience(1600)
monster:speed(290)
monster:race(RACE_BLOOD)
monster:corpseId(6067)
monster:outfit({lookType = 20})
monster:defense(29)
monster:armor(20)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = -5},
    {type = COMBAT_EARTHDAMAGE, percent = 80}
})

-- Immunities
monster:immunities({
    {type = COMBAT_ICEDAMAGE, combat = true},
    {condition = CONDITION_FIRE, immunity = true},
    {type = COMBAT_LIFEDRAIN, combat = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Gnarrr!", yell = false},
    {text = "Tcharrr!", yell = false},
    {text = "Rrrah!", yell = false},
    {text = "Rraaar!", yell = false}
})

-- Loot
monster:loot({
    {id = 2226, chance = 50000}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -530}
})

monster:register()
