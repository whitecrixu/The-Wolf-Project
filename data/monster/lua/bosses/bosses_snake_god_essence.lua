-- Snake God Essence
-- Converted from XML

local monster = Game.createMonsterType("Snake God Essence")
if not monster then return end

monster:name("Snake God Essence")
monster:nameDescription("snake god essence")
monster:health(20000)
monster:maxHealth(20000)
monster:experience(1350)
monster:speed(300)
monster:race(RACE_BLOOD)
monster:corpseId(12385)
monster:outfit({lookType = 356})
monster:defense(65)
monster:armor(70)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = -10},
    {type = COMBAT_ENERGYDAMAGE, percent = -10},
    {type = COMBAT_PHYSICALDAMAGE, percent = 10},
    {type = COMBAT_ICEDAMAGE, percent = 20}
})

-- Immunities
monster:immunities({
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true}
})

-- Voices
monster:voices({
    {text = "AHHH ZHE POWER...", yell = true},
    {text = "ZHE TIME OF ZHE SNAKE HAZ COME!", yell = true}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -250},
    {name = "lifedrain", interval = 2000, chance = 40, maxDamage = -300, length = 8},
    {name = "earth", interval = 2000, chance = 50, minDamage = -150, maxDamage = -270, radius = 6}
})

monster:register()
