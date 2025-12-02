-- Monstor
-- Converted from XML

local monster = Game.createMonsterType("Monstor")
if not monster then return end

monster:name("Monstor")
monster:nameDescription("a monstor")
monster:health(960)
monster:maxHealth(960)
monster:experience(575)
monster:speed(350)
monster:race(RACE_BLOOD)
monster:corpseId(10322)
monster:outfit({lookType = 244})
monster:defense(15)
monster:armor(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 20},
    {type = COMBAT_FIREDAMAGE, percent = 50},
    {type = COMBAT_ICEDAMAGE, percent = 10},
    {type = COMBAT_EARTHDAMAGE, percent = 30},
    {type = COMBAT_ENERGYDAMAGE, percent = -7},
    {type = COMBAT_HOLYDAMAGE, percent = -3}
})

-- Immunities
monster:immunities({
    {type = COMBAT_LIFEDRAIN, combat = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "NO ARMY ME STOPPING! GRARR!", yell = false},
    {text = "ME DESTROY CITY! GROAR!", yell = false},
    {text = "WHARR! MUST ... KIDNAP WOMEN!", yell = false}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 1200, chance = 100, minDamage = 0, maxDamage = -167},
    {name = "lifedrain", interval = 2000, chance = 30, minDamage = -66, maxDamage = -85, length = 6}
})

monster:register()
