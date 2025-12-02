-- Sir Valorcrest
-- Converted from XML

local monster = Game.createMonsterType("Sir Valorcrest")
if not monster then return end

monster:name("Sir Valorcrest")
monster:nameDescription("a vampire lord")
monster:health(1600)
monster:maxHealth(1600)
monster:experience(1800)
monster:speed(270)
monster:race(RACE_UNDEAD)
monster:corpseId(8937)
monster:outfit({lookType = 287})
monster:defense(35)
monster:armor(38)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 20},
    {type = COMBAT_HOLYDAMAGE, percent = -15},
    {type = COMBAT_FIREDAMAGE, percent = -10}
})

-- Immunities
monster:immunities({
    {type = COMBAT_LIFEDRAIN, combat = true},
    {type = COMBAT_DEATHDAMAGE, combat = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "I challenge you!", yell = false}
})

-- Loot
monster:loot({
    {id = 7427, chance = 250},
    {id = 9020, chance = 100000},
    {id = 7588, chance = 1500},
    {id = 2207, chance = 1400},
    {id = 2229, chance = 15000},
    {id = 9020, chance = 10000},
    {id = 2152, chance = 50000, maxCount = 5},
    {id = 2148, chance = 100000, maxCount = 93},
    {id = 2216, chance = 17111},
    {id = 2534, chance = 6300}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -165},
    {name = "death", interval = 1000, chance = 12, maxDamage = -190, radius = 4}
})

monster:register()
