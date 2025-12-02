-- Crystalcrusher
-- Converted from XML

local monster = Game.createMonsterType("Crystalcrusher")
if not monster then return end

monster:name("Crystalcrusher")
monster:nameDescription("a crystalcrusher")
monster:health(570)
monster:maxHealth(570)
monster:experience(500)
monster:speed(230)
monster:race(RACE_UNDEAD)
monster:corpseId(18487)
monster:outfit({lookType = 511})
monster:defense(20)
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
    {type = COMBAT_DEATHDAMAGE, percent = 10},
    {type = COMBAT_FIREDAMAGE, percent = 15},
    {type = COMBAT_HOLYDAMAGE, percent = -1},
    {type = COMBAT_ENERGYDAMAGE, percent = -5},
    {type = COMBAT_ICEDAMAGE, percent = -3}
})

-- Immunities
monster:immunities({
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Creak!", yell = false},
    {text = "Crunch!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 85000, maxCount = 90},
    {id = 18417, chance = 5250},
    {id = 18418, chance = 5000},
    {id = 18416, chance = 4920},
    {id = 18304, chance = 5000, maxCount = 3},
    {id = 18432, chance = 3690}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -106},
    {name = "earth", interval = 2000, chance = 10, minDamage = -110, maxDamage = -260, radius = 3}
})

monster:register()
