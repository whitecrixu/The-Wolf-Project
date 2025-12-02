-- Tremorak
-- Converted from XML

local monster = Game.createMonsterType("Tremorak")
if not monster then return end

monster:name("Tremorak")
monster:nameDescription("Tremorak")
monster:health(10000)
monster:maxHealth(10000)
monster:experience(1300)
monster:speed(290)
monster:race(RACE_UNDEAD)
monster:corpseId(8933)
monster:outfit({lookType = 285})
monster:defense(30)
monster:armor(30)
monster:runHealth(1000)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_DEATHDAMAGE, percent = 45},
    {type = COMBAT_ICEDAMAGE, percent = 20},
    {type = COMBAT_PHYSICALDAMAGE, percent = 50},
    {type = COMBAT_HOLYDAMAGE, percent = 50},
    {type = COMBAT_FIREDAMAGE, percent = -15},
    {type = COMBAT_ENERGYDAMAGE, percent = 85}
})

-- Immunities
monster:immunities({
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "STOMP STOMP!", yell = true}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -86},
    {name = "earth", interval = 2000, chance = 16, maxDamage = -255, radius = 7},
    {name = "earth", interval = 2000, chance = 16, maxDamage = -405, length = 8},
    {name = "poisoncondition", interval = 2000, chance = 16, range = 7}
})

monster:register()
