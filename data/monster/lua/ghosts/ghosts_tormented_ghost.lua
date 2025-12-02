-- Tormented Ghost
-- Converted from XML

local monster = Game.createMonsterType("Tormented Ghost")
if not monster then return end

monster:name("Tormented Ghost")
monster:nameDescription("a ghost")
monster:health(210)
monster:maxHealth(210)
monster:experience(120)
monster:speed(160)
monster:race(RACE_UNDEAD)
monster:manaCost(100)
monster:corpseId(9741)
monster:outfit({lookType = 48})
monster:defense(10)
monster:armor(10)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Immunities
monster:immunities({
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {type = COMBAT_DEATHDAMAGE, combat = true},
    {type = COMBAT_PHYSICALDAMAGE, combat = true},
    {type = COMBAT_LIFEDRAIN, combat = true},
    {condition = CONDITION_PARALYZE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Haaahhh!", yell = false},
    {text = "Grrglll", yell = false}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -170},
    {name = "lifedrain", interval = 3000, chance = 15, minDamage = -55, maxDamage = -105}
})

monster:register()
