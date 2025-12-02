-- Dwarf Henchman
-- Converted from XML

local monster = Game.createMonsterType("Dwarf Henchman")
if not monster then return end

monster:name("Dwarf Henchman")
monster:nameDescription("a dwarf henchman")
monster:health(350)
monster:maxHealth(350)
monster:experience(15)
monster:speed(170)
monster:race(RACE_BLOOD)
monster:corpseId(6007)
monster:outfit({lookType = 160, lookHead = 115, lookBody = 77, lookLegs = 112, lookFeet = 114})
monster:defense(10)
monster:armor(8)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 15},
    {type = COMBAT_ICEDAMAGE, percent = 15},
    {type = COMBAT_FIREDAMAGE, percent = -10},
    {type = COMBAT_DEATHDAMAGE, percent = 15}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "This place is for our eyes only!", yell = false},
    {text = "We will live and let you die!", yell = false},
    {text = "I will die another day!", yell = false},
    {text = "We have license to kill!", yell = false}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -50},
    {name = "drowncondition", interval = 2000, chance = 20}
})

monster:register()
