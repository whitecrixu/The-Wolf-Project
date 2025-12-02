-- Diblis the fair
-- Converted from XML

local monster = Game.createMonsterType("Diblis the fair")
if not monster then return end

monster:name("Diblis the fair")
monster:nameDescription("a vampire lord")
monster:health(1600)
monster:maxHealth(1600)
monster:experience(1800)
monster:speed(280)
monster:race(RACE_UNDEAD)
monster:corpseId(8937)
monster:outfit({lookType = 287})
monster:defense(30)
monster:armor(30)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = -10},
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
    {text = "I envy you to be slain by someone as beautiful as me.", yell = false},
    {text = "I will drain your ugly corpses of the last drop of blood.", yell = false}
})

-- Loot
monster:loot({
    {id = 2229, chance = 15000},
    {id = 7588, chance = 1500},
    {id = 2144, chance = 8900, maxCount = 2},
    {id = 2152, chance = 50000, maxCount = 5},
    {id = 2148, chance = 100000, maxCount = 99},
    {id = 2216, chance = 14111},
    {id = 13224, chance = 500},
    {id = 9020, chance = 10000},
    {id = 2534, chance = 2100},
    {id = 8903, chance = 300}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -165},
    {name = "death", interval = 1000, chance = 12, maxDamage = -155}
})

monster:register()
