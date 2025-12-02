-- Dirtbeard
-- Converted from XML

local monster = Game.createMonsterType("Dirtbeard")
if not monster then return end

monster:name("Dirtbeard")
monster:nameDescription("a dirtbeard")
monster:health(630)
monster:maxHealth(630)
monster:experience(375)
monster:speed(300)
monster:race(RACE_BLOOD)
monster:manaCost(775)
monster:corpseId(10320)
monster:outfit({lookType = 98})
monster:defense(35)
monster:armor(30)
monster:runHealth(63)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_EARTHDAMAGE, percent = 20},
    {type = COMBAT_HOLYDAMAGE, percent = 10},
    {type = COMBAT_ICEDAMAGE, percent = -5},
    {type = COMBAT_FIREDAMAGE, percent = -10}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "You are no match for the scourge of the seas!", yell = false},
    {text = "You move like a seasick whale!", yell = false},
    {text = "Yarr, death to all landlubbers!", yell = false}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 1200, chance = 100, minDamage = 0, maxDamage = -125},
    {name = "physical", interval = 2000, chance = 30, maxDamage = -100, range = 7},
    {name = "melee", interval = 1200, chance = 30, minDamage = 0, maxDamage = 0}
})

monster:register()
