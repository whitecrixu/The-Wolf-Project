-- Deathspawn
-- Converted from XML

local monster = Game.createMonsterType("Deathspawn")
if not monster then return end

monster:name("Deathspawn")
monster:nameDescription("a deathspawn")
monster:health(225)
monster:maxHealth(225)
monster:experience(20)
monster:speed(230)
monster:race(RACE_BLOOD)
monster:manaCost(305)
monster:corpseId(2220)
monster:outfit({lookType = 226, lookHead = 114, lookBody = 98, lookLegs = 97, lookFeet = 114})
monster:defense(5)
monster:armor(1)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_HOLYDAMAGE, percent = 10},
    {type = COMBAT_FIREDAMAGE, percent = -15},
    {type = COMBAT_ENERGYDAMAGE, percent = -15},
    {type = COMBAT_ICEDAMAGE, percent = -15}
})

-- Immunities
monster:immunities({
    {type = COMBAT_DEATHDAMAGE, combat = true},
    {type = COMBAT_EARTHDAMAGE, combat = true}
})

-- Voices
monster:voices({
    {text = "Ribbit!", yell = false},
    {text = "Ribbit! Ribbit!", yell = false}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -50},
    {name = "fire", interval = 1000, chance = 10, minDamage = -400, maxDamage = -700, length = 7},
    {name = "energy", interval = 1000, chance = 11, minDamage = -250, maxDamage = -450, length = 7}
})

monster:register()
