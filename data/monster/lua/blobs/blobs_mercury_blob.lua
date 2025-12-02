-- Mercury Blob
-- Converted from XML

local monster = Game.createMonsterType("Mercury Blob")
if not monster then return end

monster:name("Mercury Blob")
monster:nameDescription("a mercury blob")
monster:health(150)
monster:maxHealth(150)
monster:experience(180)
monster:speed(180)
monster:race(RACE_UNDEAD)
monster:corpseId(9961)
monster:outfit({lookType = 316})
monster:defense(15)
monster:armor(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = 10},
    {type = COMBAT_EARTHDAMAGE, percent = 65},
    {type = COMBAT_ICEDAMAGE, percent = 15},
    {type = COMBAT_PHYSICALDAMAGE, percent = 5},
    {type = COMBAT_HOLYDAMAGE, percent = 65},
    {type = COMBAT_LIFEDRAIN, percent = 80}
})

-- Immunities
monster:immunities({
    {type = COMBAT_DEATHDAMAGE, combat = true}
})

-- Voices
monster:voices({
    {text = "Crackle", yell = false}
})

-- Loot
monster:loot({
    {id = 9966, chance = 17966}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -70},
    {name = "drunk", interval = 2000, chance = 10, range = 7},
    {name = "energy", interval = 2000, chance = 20, minDamage = -10, maxDamage = -30, range = 7}
})

monster:register()
